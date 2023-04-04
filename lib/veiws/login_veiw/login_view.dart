import 'package:flutter/material.dart';
import 'package:hellblog/veiws/login_veiw/login_page_desktop_table.dart';
import 'package:hellblog/veiws/login_veiw/login_page_mobile.dart';
import 'package:hellblog/widgets/appbar/appbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: Column(
          children: const <Widget>[
            Appbar(),
            Expanded(
              child: LoginPageMobile(),
            ),
          ],
        ),
        tablet: Row(
          children: const <Widget>[
            Expanded(flex: 2, child: Appbar()),
            Expanded(
              flex: 4,
              child: LoginPageDesktopTable(),
            ),
          ],
        ),
      ),
    );
  }
}
