import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hellblog/router/router.dart';

class HomeViewTabletDesktop extends StatefulWidget {
  const HomeViewTabletDesktop({Key? key}) : super(key: key);

  @override
  _HomeViewTabletDesktopState createState() => _HomeViewTabletDesktopState();
}

class _HomeViewTabletDesktopState extends State<HomeViewTabletDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("HomePage"),
            SizedBox(
              width: 300,
              height: 100,
              child: TextButton(
                child: const Text("goBack"),
                onPressed: () {
                  GoRouter.of(context).go(MyRouter.login);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
