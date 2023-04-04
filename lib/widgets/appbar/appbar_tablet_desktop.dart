import 'package:flutter/material.dart';
import 'package:hellblog/consts/colors.dart';
import 'package:hellblog/widgets/page_heading/page_heading.dart';

class AppbarDesktop extends StatelessWidget {
  const AppbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkPurple,
      height: double.infinity,
      // width: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/registration_page/hellboy.png',
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            const PageHeading(title: "HELLBLOG"),
          ],
        ),
      ),
    );
  }
}
