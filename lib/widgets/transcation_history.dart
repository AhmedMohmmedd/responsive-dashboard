import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transcation_history_header.dart';
import 'package:responsive_dashboard/widgets/transcation_history_list_view.dart';
import 'package:responsive_dashboard/widgets/transcation_item.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TranscationHistoryHeader(),
         SizedBox(
          height: 20,
        ),
        TranscationHistoryListView(),
      ],
    );
  }
}
