import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_detalis.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        AllExpensesHeader(
          headerText: 'Income',
        ),
        SizedBox(height: 16,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetalis()),
          ],
        )
      ],
    ));
  }
}
