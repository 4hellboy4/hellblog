import 'package:flutter/material.dart';
import 'package:hellblog/consts/colors.dart';
import 'package:hellblog/widgets/page_heading/page_heading.dart';

class AppbarMobile extends StatelessWidget {
  const AppbarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkPurple,
      width: double.infinity,
      height: 100,
      child: const Center(
        child: PageHeading(title: "HELLBLOG"),
      ),
    );
  }
}
