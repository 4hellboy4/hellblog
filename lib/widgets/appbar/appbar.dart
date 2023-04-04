import 'package:hellblog/widgets/appbar/appbar_tablet_desktop.dart';
import 'package:hellblog/widgets/appbar/appbar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AppbarMobile(),
      tablet: OrientationLayoutBuilder(
        portrait: (context) => const AppbarMobile(),
        landscape: (context) => const AppbarDesktop(),
      ),
    );
  }
}
