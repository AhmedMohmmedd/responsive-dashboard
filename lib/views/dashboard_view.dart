import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adabtive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey  = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey ,
      drawer: MediaQuery.sizeOf(context).width  < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width  < 800 ? AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(Icons.list)),
      ) : null,
      backgroundColor:const Color(0xFFF7F9FA),
      body: AdaptiveLayoutBulider(
          mobilelayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          daskTopLayout: (context) =>const  DashboardDeskTopLayout()),
    );
  }
}
