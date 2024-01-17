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
      // children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  itemModel: item,
                  isActive: slectedItem == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                  itemModel: item,
                  isActive: slectedItem == index,
                )),
          );
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      slectedItem = index;
    });
  }
}
