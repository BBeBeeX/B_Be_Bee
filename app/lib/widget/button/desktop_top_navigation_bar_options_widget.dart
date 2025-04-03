import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/util/shortcut_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopTopNavigationBarOptionsWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_horiz_outlined,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.9)),
      onSelected: (subValue) async {
        await ShortcutUtils.handleShortcut(context, ref, subValue);
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            child: PopupMenuButton<String>(
              padding: const EdgeInsets.all(0),
              offset: const Offset(100, -10),
              child: ListTile(
                title: Text(t.general.files),
                trailing: Icon(Icons.keyboard_arrow_right,
                    size: 15,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.9)),
              ),
              onSelected: (subValue) async {
                await ShortcutUtils.handleShortcut(context, ref, subValue);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'new_playlist',
                    child: Text(t.widget.createCollect),
                  ),
                  // PopupMenuItem<String>(
                  //   value: 'new_playlist_file',
                  //   child: Text('新建歌单文件夹'),
                  // ),
                  PopupMenuDivider(),

                  PopupMenuItem<String>(
                    value: 'quit',
                    child: Text(t.general.quit),
                  ),
                ];
              },
            ),
          ),
          PopupMenuItem<String>(
            child: PopupMenuButton<String>(
              padding: const EdgeInsets.all(0),
              offset: const Offset(100, -10),
              child: ListTile(
                title: Text(t.general.play),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 15,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
                ),
              ),
              onSelected: (subValue) async {
                await ShortcutUtils.handleShortcut(context, ref, subValue);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'stop',
                    child: ListTile(
                      title: Text(t.general.playAndPause),
                      trailing: Text('Space'),
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<String>(
                    value: 'skip',
                    child: ListTile(
                      title: Text(t.general.next),
                      trailing: Text('Ctrl+Right Arrow'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'previous',
                    child: ListTile(
                        title: Text(t.general.previous),
                        trailing: Text('Ctrl+Left Arrow')),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<String>(
                    value: 'cycle_repeat_mode',
                    child: ListTile(
                        title: Text(t.general.changePlayMode),
                        trailing: Text('Ctrl+R')),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<String>(
                    value: 'volume_up',
                    child: ListTile(
                        title: Text(t.general.volumeUp),
                        trailing: Text('Ctrl+Up Arrow')),
                  ),
                  PopupMenuItem<String>(
                    value: 'volume_down',
                    child: ListTile(
                        title: Text(t.general.volumeDown),
                        trailing: Text('Ctrl+Down Arrow')),
                  ),
                ];
              },
            ),
          ),
          PopupMenuItem<String>(
            value: 'setting',
            child: Text(t.general.settings),
          ),
          PopupMenuItem<String>(
            value: 'about',
            child: Text(t.general.about),
          ),
        ];
      },
    );
  }
}
