import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme.dart';
import '../../controller/collects_page_controller.dart';
import '../../model/enum/sort_method_enum.dart';

class CollectsListWidgetSortPopupMenuButtonWidget extends ConsumerWidget {
  final bool isSearching;
  final SortMethodEnum collectsStateSortMode;

  const CollectsListWidgetSortPopupMenuButtonWidget({
    required this.isSearching,
    required this.collectsStateSortMode,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<SortMethodEnum>(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: !isSearching,
              child: Text(
                collectsStateSortMode.label,
                style: TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.8)),
              ),
            ),
            SizedBox(width: 4,),
            Icon(Icons.format_list_bulleted,color: Theme.of(context).colorScheme.primary.withOpacity(0.8),size: 20,),
          ],
        ),
      ),
      onSelected: (mode) {
        ref.read(collectsPageProvider.notifier).setSortMode(mode);
      },
      itemBuilder: (context) => [
        _buildSortMenuItem(
          SortMethodEnum.default_,
        ),
        _buildSortMenuItem(
          SortMethodEnum.recentPlay,
        ),
        _buildSortMenuItem(
          SortMethodEnum.alphabet,
        ),
      ],
    );
  }


  PopupMenuItem<SortMethodEnum> _buildSortMenuItem(
      SortMethodEnum mode,
      ) {
    final isSelected = mode == collectsStateSortMode;

    return PopupMenuItem(
      value: mode,
      child: Row(
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              mode.label,
              style: TextStyle(
                color: isSelected ? green : null,
              ),
            ),
          ),
          if (isSelected)
            Icon(
              Icons.check,
              color: green,
              size: 20,
            ),
        ],
      ),
    );
  }


}

