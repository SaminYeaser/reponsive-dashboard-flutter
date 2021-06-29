import 'package:dashboard/screens/components/storageInfoCard.dart';
import 'package:flutter/material.dart';

class StorageInfoChart extends StatelessWidget {
  const StorageInfoChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'DocumentFiles',
            amoutnOfFiles: '1.3 GB',
            numOfFiles: 1369),
        StorageInfoCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
            amoutnOfFiles: '1.9 GB',
            numOfFiles: 2000),

      ],
    );
  }
}
