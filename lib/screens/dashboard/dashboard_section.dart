import 'package:dashboard/screens/components/textfieldSearch.dart';
import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(
          defaultPadding,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "DashBoard",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(
                  child: TextFieldSearch(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
