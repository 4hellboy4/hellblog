import 'package:flutter/material.dart';
import 'package:hellblog/widgets/login_container/login_container.dart';
import 'package:hellblog/widgets/login_container/login_container_tablet_desktop.dart';

class LoginPageDesktopTable extends StatefulWidget {
  const LoginPageDesktopTable({Key? key}) : super(key: key);

  @override
  _LoginPageDesktopTableState createState() => _LoginPageDesktopTableState();
}

class _LoginPageDesktopTableState extends State<LoginPageDesktopTable> {
  @override
  Widget build(BuildContext context) {
    return const LoginContainer();
  }
}
