import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transcation_model.dart';
import 'package:responsive_dashboard/widgets/transcation_item.dart';

class TranscationHistoryListView extends StatelessWidget {
  const TranscationHistoryListView({super.key});

  static const items = [
    TranscationModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithrawel: true,
    ),
    TranscationModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$2,000',
      isWithrawel: true,
    ),
    TranscationModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 3:30 PM',
      amount: r'$2,019',
      isWithrawel: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => TranscationIteam(transcationModel: e)).toList(),
    );
    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return TranscationIteam(transcationModel: items[index]);
    //     });
  }
}
