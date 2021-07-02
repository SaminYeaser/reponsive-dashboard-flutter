import 'package:dashboard/screens/components/storageInfoCard.dart';
import 'package:dashboard/screens/components/storageInfoData.dart';
import 'package:dashboard/screens/responsiveness.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../pieCharts.dart';

class Charts extends StatelessWidget {
  const Charts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Storage Section',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                      sections:
                      pieChartSelectionData,
                      sectionsSpace: 0
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '29.9',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'of 128 GB',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          if(!Responsive.isMobile(context))
          StorageInfoChart()
        ],
      ),
    );
  }
}
