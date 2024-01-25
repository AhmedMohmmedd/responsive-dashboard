
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

// class DetaledIncomeChart extends StatefulWidget {
//   const DetaledIncomeChart({super.key});

//   @override
//   State<DetaledIncomeChart> createState() => _DetaledIncomeChartState();
// }

// class _DetaledIncomeChartState extends State<DetaledIncomeChart> {
//   int activeIndex = -1;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: AspectRatio(
//         aspectRatio: 1,
//         child: PieChart(getChartData())),
//     );
//   }

//   PieChartData getChartData() {
//     return PieChartData(
//       pieTouchData: PieTouchData(
//         enabled: true,
//         touchCallback: (p0, pieTouchResponse) {
//           activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex??  -1;
//           setState(() {
            
//           });
//         },
//       ),
//       sectionsSpace: 0,
      
//       sections: [
//         PieChartSectionData(
//           titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
//           title: activeIndex == 0 ? 'Design service' : '40%',
//           titleStyle: AppStyles.styleMedium16
//               .copyWith(color: activeIndex == 0 ? null : Colors.white),
//           radius: activeIndex == 0 ? 60 : 50,
//           value: 40,
//           color: const Color(0xFF208BC7),
//         ),
//         PieChartSectionData(
//           value: 25,
//           color:const Color(0xff4EB7F2),
//           // showTitle: false,
//           radius: activeIndex == 1 ? 50 : 40,
//         ),
//         PieChartSectionData(
//           value: 20,
//           color:const Color(0xff064061),
//           showTitle: false,
//           radius: activeIndex == 2 ? 50 : 40,
//         ),
//         PieChartSectionData(
//           titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
//           titleStyle: AppStyles.styleMedium16
//               .copyWith(color: activeIndex == 3 ? null : Colors.black),
//           // title: activeIndex == 3 ? 'Other' : '22%',
//           title: '22%',
//           value: 22,
//           color:const Color(0xffE2DECD),
//           showTitle: false,
//           radius: activeIndex == 3 ? 50 : 40,
//         ),
//       ]
//     );
//   }
// }

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}