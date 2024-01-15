import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoLListTile(
            image: Assets.imagesFrame77,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DrawerItem(drawerItemModel: items[index]),
                );
              }))
        ],
      ),
    );
  }
}