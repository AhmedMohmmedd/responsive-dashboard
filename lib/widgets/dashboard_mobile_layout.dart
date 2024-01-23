
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transcation_history.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
    // SizedBox(height: 40,),
    AllExpenses(),
    SizedBox(height: 24,),
    QuickInvoice(),
    SizedBox(height: 24,),
      MyCardsAndTranscationHistory(),
      SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
      ),
    );
  }
}