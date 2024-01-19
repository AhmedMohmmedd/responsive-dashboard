import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitel: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame1,
        title: 'Josua Nunito',
        subTitel: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitel: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoLListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoLListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
