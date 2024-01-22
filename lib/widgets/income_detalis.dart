import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_detalis_item_model.dart';
import 'package:responsive_dashboard/widgets/income_detalis_item.dart';

class IncomeDetalis extends StatelessWidget {
  const IncomeDetalis({super.key});
static const items = [
  IncomeDetalisItemModel(color: Color(0xFF208BC7), title: 'Design service', value: '40%'),
  IncomeDetalisItemModel(color: Color(0xFF4DB7F2), title: 'Design service', value: '25%'),
  IncomeDetalisItemModel(color:  Color(0xFF064060), title: 'Design service', value: '20%'),
  IncomeDetalisItemModel(color: Color(0xFFE2DECD), title: 'Design service', value: '22%'),
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context ,index){
      return IncomeDetalisItem(incomeDetalisItemModel: items[index]);
    });
  }
}
