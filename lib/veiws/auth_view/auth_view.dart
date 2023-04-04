import 'package:flutter/material.dart';
import 'package:hellblog/veiws/auth_view/auth_mobile.dart';
import 'package:hellblog/veiws/auth_view/auth_view_tablet_desktop.dart';
import 'package:hellblog/veiws/login_veiw/login_page_desktop_table.dart';
import 'package:hellblog/veiws/login_veiw/login_page_mobile.dart';
import 'package:hellblog/widgets/appbar/appbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: Column(
          children: const <Widget>[
            Appbar(),
            Expanded(
              child: AuthMobile(),
            ),
          ],
        ),
        tablet: Row(
          children: const <Widget>[
            Expanded(flex: 2, child: Appbar()),
            Expanded(
              flex: 4,
              child: AuthViewTabletDesktop(),
            ),
          ],
        ),
      ),
    );
  }
}
