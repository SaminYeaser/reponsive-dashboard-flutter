import 'package:dashboard/controllers/menuController.dart';
import 'package:dashboard/screens/dashboard/dashboard_section.dart';
import 'package:dashboard/screens/responsiveness.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'components/charts.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
            if (!Responsive.isMobile(context))
              Expanded(
                child: Charts(),
                flex: 2,
              ),
          ],
        ),
      ),
    );
  }
}
