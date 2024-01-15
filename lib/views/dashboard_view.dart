import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adabtive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutBulider(
          mobilelayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          daskTopLayout: (context) => DashboardDeskTopLayout()),
    );
  }
}
