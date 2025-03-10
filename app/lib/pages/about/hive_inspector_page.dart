import 'dart:convert';

import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

const _commonBoxName = 'bbb_box';
const _collectsBoxName = 'bbb_collects_box';
const _audioBoxName = 'bbb_audio_box';

class HiveInspectorPage extends ConsumerStatefulWidget {
  const HiveInspectorPage({super.key});

  @override
  ConsumerState<HiveInspectorPage> createState() => _HiveInspectorPageState();
}

class _HiveInspectorPageState extends ConsumerState<HiveInspectorPage> {
  Map<String, dynamic> _hiveData = {};
  bool _isLoading = true;
  String? _error;
  String _searchQuery = '';



  @override
  void initState() {
    super.initState();
    _loadHiveData();
  }

  Future<void> _loadHiveData() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final Map<String, dynamic> data = {};
      
      // 打开通用设置 box
      try {
        final box = await Hive.openBox(_commonBoxName);
        final Map<String, dynamic> boxData = {};
        for (final key in box.keys) {
          try {
            boxData[key.toString()] = box.get(key);
          } catch (e) {
            boxData[key.toString()] = '<Error: $e>';
          }
        }
        data[_commonBoxName] = boxData;
      } catch (e) {
        data[_commonBoxName] = '<Error opening box: $e>';
      }

      // 打开收藏夹 box
      try {
        final box = await Hive.openBox<CollectPlaylist>(_collectsBoxName);
        final Map<String, dynamic> boxData = {};
        for (final key in box.keys) {
          try {
            final playlist = box.get(key);
            boxData[key.toString()] = playlist?.toJson();
          } catch (e) {
            boxData[key.toString()] = '<Error: $e>';
          }
        }
        data[_collectsBoxName] = boxData;
      } catch (e) {
        data[_collectsBoxName] = '<Error opening box: $e>';
      }

      // 打开音频数据 box
      try {
        final box = await Hive.openBox<AudioInfo>(_audioBoxName);
        final Map<String, dynamic> boxData = {};
        for (final key in box.keys) {
          try {
            final audio = box.get(key);
            boxData[key.toString()] = audio?.toJson();
          } catch (e) {
            boxData[key.toString()] = '<Error: $e>';
          }
        }
        data[_audioBoxName] = boxData;
      } catch (e) {
        data[_audioBoxName] = '<Error opening box: $e>';
      }

      setState(() {
        _hiveData = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  List<MapEntry<String, dynamic>> _getFilteredEntries() {
    final List<MapEntry<String, dynamic>> allEntries = [];
    
    _hiveData.forEach((boxName, boxData) {
      if (boxData is Map) {
        boxData.forEach((key, value) {
          if (_searchQuery.isEmpty ||
              boxName.toLowerCase().contains(_searchQuery.toLowerCase()) ||
              key.toLowerCase().contains(_searchQuery.toLowerCase()) ||
              value.toString().toLowerCase().contains(_searchQuery.toLowerCase())) {
            allEntries.add(MapEntry(
              '$boxName > $key',
              value,
            ));
          }
        });
      }
    });

    return allEntries;
  }

  @override
  Widget build(BuildContext context) {
    final filteredEntries = _getFilteredEntries();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Storage Inspector'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadHiveData,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              hintText: 'Search key or value...',
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              leading: const Icon(Icons.search),
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _error != null
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Load Fail: $_error'),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: _loadHiveData,
                              child: const Text('retry '),
                            ),
                          ],
                        ),
                      )
                    : filteredEntries.isEmpty
                        ? const Center(child: Text('No Data'))
                        : ListView.builder(
                            itemCount: filteredEntries.length,
                            itemBuilder: (context, index) {
                              final entry = filteredEntries[index];
                              return _buildHiveEntry(entry.key, entry.value);
                            },
                          ),
          ),
        ],
      ),
    );
  }

  Widget _buildHiveEntry(String key, dynamic value) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ExpansionTile(
        title: Text(
          key,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          value.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'value:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  _formatValue(value),
                  style: TextStyle(
                    fontFamily: 'monospace',
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatValue(dynamic value) {
    if (value == null) return 'null';
    if (value is Map) {
      return const JsonEncoder.withIndent('  ').convert(value);
    }
    if (value is List) {
      return value.map((e) => e.toString()).join('\n');
    }
    return value.toString();
  }
} 