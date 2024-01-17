
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });
 

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
 int activeIndex = 0;
  final List<DrawerItemModel> items =  const[
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if(activeIndex != index){
                  activeIndex = index;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(drawerItemModel:items[index] , isActive: activeIndex == index,),
            ),
          );
        }));
  }
}
