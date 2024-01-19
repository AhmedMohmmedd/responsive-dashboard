import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom)button.dart';
import 'package:responsive_dashboard/widgets/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitelTextFiled(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitelTextFiled(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitelTextFiled(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitelTextFiled(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backgroundColor: Colors.transparent,
              textColor: Color(0xFF4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton()),
          ],
        )
      ],
    );
  }
}
