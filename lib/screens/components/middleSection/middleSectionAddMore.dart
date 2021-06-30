import 'package:flutter/material.dart';

class MiddleAddMore extends StatelessWidget {
  const MiddleAddMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            '+ Add More',
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(15),
            ),
          ),
        )
      ],
    );
  }
}
