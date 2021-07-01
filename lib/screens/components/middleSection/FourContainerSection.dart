import 'package:dashboard/screens/components/middleSection/eachContainerSection.dart';

import 'package:flutter/material.dart';


class FourContainer extends StatelessWidget {
  const FourContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        SizedBox(width: 10,),
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
        ),
      ],
    );
  }
}
