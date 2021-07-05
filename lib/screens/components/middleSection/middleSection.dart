import 'package:dashboard/screens/components/middleSection/FourContainerSection.dart';
import 'package:dashboard/screens/components/middleSection/middleSectionAddMore.dart';
import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';

import '../../responsiveness.dart';
import '../charts.dart';
import '../storageInfoData.dart';
import 'dataTable.dart';
import 'eachContainerSection.dart';

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
        if(Responsive.isDesktop(context))
          FourContainer(),
        if(Responsive.isTablet(context))
          FourContainer(),
        if(Responsive.isMobile(context))
          Column(
            children: [
              Row(
                children: [
                  EachContainerSection(
                    svgPic: 'assets/icons/Documents.svg',
                    titleName: 'Documents',
                    fileSize: '1.8 GB',
                    filesNumber: '345 Files',
                    color: Colors.blue, width: 27,
                  ),
                  SizedBox(width: 10,),
                  EachContainerSection(
                    svgPic: 'assets/icons/google_drive.svg',
                    titleName: 'Google Drive',
                    fileSize: '1.3 GB',
                    filesNumber: '1345 Files',
                    color: Colors.orange,  width: 50,
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  EachContainerSection(
                    svgPic: 'assets/icons/one_drive.svg',
                    titleName: 'One Drive',
                    fileSize: '1.8 GB',
                    filesNumber: '1245 Files',
                    color: Colors.lightBlue, width: 100,
                  ),
                  SizedBox(width: 10,),
                  EachContainerSection(
                    svgPic: 'assets/icons/Documents.svg',
                    titleName: 'Documents',
                    fileSize: '12.3 GB',
                    filesNumber: '1745 Files',
                    color: Colors.red, width: 10,
                  )
                ],
              )
            ],
          ),
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
