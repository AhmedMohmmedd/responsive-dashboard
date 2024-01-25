import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transcation_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TranscationIteam extends StatelessWidget {
  const TranscationIteam({
    super.key,
    required this.transcationModel,
  });
  final TranscationModel transcationModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          
          transcationModel.title,
          maxLines: 1,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transcationModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(transcationModel.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transcationModel.isWithrawel
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            )),
      ),
    );
  }
}
