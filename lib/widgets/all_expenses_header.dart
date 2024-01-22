import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key, required this.headerText});
final String headerText;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
          headerText,
          style: AppStyles.styleSimiBolde20,
        ),
        const Expanded(child: SizedBox()),
       const RangeOptions(),
      ],
    );
  }
}
