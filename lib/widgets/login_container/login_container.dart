import 'package:flutter/material.dart';
import 'package:hellblog/widgets/login_container/login_container_mobil.dart';
import 'package:hellblog/widgets/login_container/login_container_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LoginContainerMobil(),
      tablet: const LoginContainerTabletDesktop(),
      desktop: const LoginContainerTabletDesktop(),
    );
  }
}
