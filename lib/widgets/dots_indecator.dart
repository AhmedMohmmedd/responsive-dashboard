import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indecator.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.curentPageIndex});
  final int curentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDotIndecator(isActive: index == curentPageIndex),
              )),
    );
  }
}
