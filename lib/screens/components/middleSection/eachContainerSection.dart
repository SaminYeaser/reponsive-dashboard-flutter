import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class EachContainerSection extends StatelessWidget {
  const EachContainerSection({
    Key? key,
    required this.svgPic,
    required this.titleName,
    required this.fileSize,
    required this.filesNumber,
    required this.color,
    required this.width,
  }) : super(key: key);

  final String svgPic, titleName, fileSize, filesNumber;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
       height: 170,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: secondaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: SvgPicture.asset(svgPic, height: 20,),
                  ),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
                Icon(Icons.more_vert)
              ],
            ),
            Text(
              titleName,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 5,
                  decoration: BoxDecoration(
                      color: color.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    width: width,
                    height: 5,
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(10)),
                  );
                })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(filesNumber), Text(fileSize)],
            )
          ],
        ),
      ),
    );
  }
}
