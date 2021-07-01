import 'package:dashboard/models/dataChartData.dart';
import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';


import 'dataRowSection.dart';

class DataChart extends StatelessWidget {
  const DataChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme
                .of(context)
                .textTheme
                .subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(demoRecentFiles.length, (index) =>
                  recentFileDataRow(demoRecentFiles[index])),
            ),
          )
        ],
      ),
    );
  }
}

