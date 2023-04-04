import 'package:flutter/material.dart';
import 'package:hellblog/veiws/home_view/home_view_mobile.dart';
import 'package:hellblog/veiws/home_view/home_view_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeVeiw extends StatefulWidget {
  const HomeVeiw({Key? key}) : super(key: key);

  @override
  _HomeVeiwState createState() => _HomeVeiwState();
}

class _HomeVeiwState extends State<HomeVeiw> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeViewMobile(),
      tablet: const HomeViewTabletDesktop(),
      desktop: const HomeViewTabletDesktop(),
    );
  }
}
