import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
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
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
