import 'package:dashboard/screens/components/middleSection/FourContainerSection.dart';
import 'package:dashboard/screens/components/middleSection/middleSectionAddMore.dart';
import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';

import '../../responsiveness.dart';
import '../charts.dart';
import '../storageInfoData.dart';
import 'dataTable.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        MiddleAddMore(),
        SizedBox(
          height: defaultPadding,
        ),
        FourContainer(),
        SizedBox(
          height: defaultPadding,
        ),
        DataChart(),
        if(Responsive.isMobile(context))
          SizedBox(height: defaultPadding,),
        if(Responsive.isMobile(context))
          Charts(),

        if(Responsive.isMobile(context))
          StorageInfoChart()
      ],

    );
  }
}
