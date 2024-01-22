
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TranscationHistoryHeader extends StatelessWidget {
  const TranscationHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSimiBolde20,
        ),
        Text('See all',
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0xFF4EB7F2),
            )),
      ],
    );
  }
}
