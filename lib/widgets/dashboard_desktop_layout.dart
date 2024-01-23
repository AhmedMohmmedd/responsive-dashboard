import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/expenses_and-Invioce_scroll_view.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transcation_history.dart';

class DashboardDeskTopLayout extends StatelessWidget {
  const DashboardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: ExpensesAndInvioceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              MyCardsAndTranscationHistory(),
              // SizedBox(
              //   height: 24,
              // ),
              // Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
