import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard(
      {Key? key,
      required this.svgSrc,
      required this.title,
      required this.amoutnOfFiles,
      required this.numOfFiles})
      : super(key: key);

  final String svgSrc, title, amoutnOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white10,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(svgSrc),
                  
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "$numOfFiles Files",
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                ),
                Text(amoutnOfFiles)
              ],
            ),
          )
        ],
      ),
    );
  }
}
