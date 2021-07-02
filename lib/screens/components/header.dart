import 'package:dashboard/screens/components/profileCard.dart';
import 'package:dashboard/screens/components/textfieldSearch.dart';
import 'package:flutter/material.dart';

import '../responsiveness.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if(!Responsive.isDesktop(context))Icon(Icons.menu),
        Text(
          "DashBoard",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(child: TextFieldSearch()),
        ProfileSection()
      ],
    );
  }
}
