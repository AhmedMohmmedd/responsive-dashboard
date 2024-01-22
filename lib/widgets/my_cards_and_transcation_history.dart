import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transcation_history.dart';

class MyCardsAndTranscationHistory extends StatelessWidget {
  const MyCardsAndTranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 12,
      child:  Column(
      children: [
        MyCardSection(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 40,
        ),
        TranscationHistory(),
        SizedBox(height: 44,)
      ],
      ),
    );
  }
}