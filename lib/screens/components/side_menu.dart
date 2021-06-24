import 'package:flutter/material.dart';

import 'drawer_list.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgScr: "assets/icons/menu_tran.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Task',
              svgScr: "assets/icons/menu_task.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Store',
              svgScr: "assets/icons/menu_store.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Notification',
              svgScr: "assets/icons/menu_notification.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgScr: "assets/icons/menu_tran.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Documents',
              svgScr: "assets/icons/menu_doc.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Profile',
              svgScr: "assets/icons/menu_profile.svg",
              press: (){},
            ),
            DrawerListTile(
              title: 'Setting',
              svgScr: "assets/icons/menu_setting.svg",
              press: (){},
            ),
          ],
        ),
      ),
    );
  }
}