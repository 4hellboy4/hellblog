import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hellblog/router/router.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, required this.errorText}) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("An error occured"),
            Text(errorText),
            SizedBox(
              height: 100,
              width: 300,
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).go(MyRouter.home);
                },
                child: const Text("get back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
