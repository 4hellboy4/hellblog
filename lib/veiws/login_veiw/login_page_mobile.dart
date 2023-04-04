import 'package:flutter/material.dart';
import 'package:hellblog/widgets/login_container/login_container.dart';

class LoginPageMobile extends StatefulWidget {
  const LoginPageMobile({Key? key}) : super(key: key);

  @override
  _LoginPageMobileState createState() => _LoginPageMobileState();
}

class _LoginPageMobileState extends State<LoginPageMobile> {
  @override
  Widget build(BuildContext context) {
    return const LoginContainer();
  }
}
