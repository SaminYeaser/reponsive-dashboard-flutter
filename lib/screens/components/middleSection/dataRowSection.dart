import 'package:dashboard/models/dataChartData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

DataRow recentFileDataRow(DataChartData files) {
  return DataRow(
    cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(files.icon),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding),
            child: Text(files.title),)
        ],
      )),
      DataCell(Text(files.date)),
      DataCell(Text(files.size))
    ],
  );
}