
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class ExpensesAndInvioceSection extends StatelessWidget {
  const ExpensesAndInvioceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40,),
        AllExpenses(),
        SizedBox(height: 24,),
        QuickInvoice(),
         SizedBox(height: 32,),
      ],
    );
  }
}

// class ExpensesAndInvioceScrollView extends StatelessWidget {
//   const ExpensesAndInvioceScrollView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: SizedBox(height: 40,),
//         ),
//         SliverToBoxAdapter(
//           child: AllExpenses(),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(height: 24,),
//         ),
//         SliverToBoxAdapter(
//           child: QuickInvoice(),
//         ),
//          SliverToBoxAdapter(
//           child: SizedBox(height: 32,),
//         ),
//       ],
//     );
//   }
// }