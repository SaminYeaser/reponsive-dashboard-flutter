import 'package:dashboard/controllers/menuController.dart';
import 'package:dashboard/screens/components/profileCard.dart';
import 'package:dashboard/screens/components/textfieldSearch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../responsiveness.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "DashBoard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(child: TextFieldSearch()),
        ProfileSection()
      ],
    );
  }
}
