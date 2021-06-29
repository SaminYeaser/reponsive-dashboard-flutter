import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      margin: EdgeInsets.only(
        left: defaultPadding,
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding / 2),
            child: Text('Md. Samin Yeaser'),
          )
        ],
      ),
    );
  }
}
