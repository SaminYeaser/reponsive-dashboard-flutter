import 'package:dashboard/screens/components/middleSection/FourContainerSection.dart';
import 'package:dashboard/screens/components/middleSection/middleSectionAddMore.dart';
import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          MiddleAddMore(),
          SizedBox(
            height: defaultPadding,
          ),
          FourContainer()
        ],
      ),
    );
  }
}
