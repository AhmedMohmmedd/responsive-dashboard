
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_detalis_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetalisItem extends StatelessWidget {
  const IncomeDetalisItem({super.key, required this.incomeDetalisItemModel});
  final IncomeDetalisItemModel incomeDetalisItemModel;

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return ListTile(
      title: Text(
        incomeDetalisItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetalisItemModel.value,
        style: AppStyles.styleMedium16(context).copyWith(color:const Color(0xFF208CC8)),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetalisItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
    );
  }
}
