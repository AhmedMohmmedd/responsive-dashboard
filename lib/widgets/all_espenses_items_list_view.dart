import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int slectedItem = 0;
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesMoneys,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesCardReceive,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesCardSend,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(0);
              },
              child: AllExpensesItem(
                itemModel: items[0],
                isActive: slectedItem == 0,
              ),
            ),
          )  ,   
        const  SizedBox(width: 12,),
        Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: AllExpensesItem(
                itemModel: items[1],
                isActive: slectedItem == 1,
              ),
            ),
          )  ,   
          const  SizedBox(width: 12,),
        Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(2);
              },
              child: AllExpensesItem(
                itemModel: items[2],
                isActive: slectedItem == 2,
              ),
            ),
          )  ,   
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      slectedItem = index;
    });
  }
}
