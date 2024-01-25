import 'package:flutter/material.dart';

class AdaptiveLayoutBulider extends StatelessWidget {
  const AdaptiveLayoutBulider({
    super.key,
    required this.mobilelayout,
    required this.tabletLayout,
    required this.daskTopLayout,
  });

  final WidgetBuilder mobilelayout, tabletLayout, daskTopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobilelayout(context);
        } else if (constraints.maxWidth < 1050) {
          return tabletLayout(context);
        } else {
          return daskTopLayout(context);
        }
      },
    );
  }
}
