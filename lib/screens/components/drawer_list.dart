import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTile extends StatelessWidget {
  final String? title, svgScr;
  final VoidCallback? press;

  DrawerListTile({this.title, this.svgScr, this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(
        svgScr!,
        color: Colors.white,
      ),
      title: Text(title!),
    );
  }
}