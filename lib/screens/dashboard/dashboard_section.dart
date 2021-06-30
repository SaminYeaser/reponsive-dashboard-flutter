import 'package:dashboard/screens/components/charts.dart';
import 'package:dashboard/screens/components/header.dart';
import 'package:dashboard/screens/components/middleSection/middleSection.dart';
import 'package:dashboard/screens/constants.dart';

import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(
          defaultPadding,
        ),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(),
                MiddleSection(),
                SizedBox(
                  width: defaultPadding,
                ),
                Charts(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
