import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hellblog/router/router.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  _HomeViewMobileState createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
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
                  GoRouter.of(context).go(MyRouter.home);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
