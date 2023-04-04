import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hellblog/router/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  MaterialColor mycolor = MaterialColor(
    const Color.fromARGB(255, 80, 0, 90).value,
    const <int, Color>{
      50: Color.fromARGB(255, 80, 0, 81),
      100: Color.fromARGB(255, 80, 0, 82),
      200: Color.fromARGB(255, 80, 0, 83),
      300: Color.fromARGB(255, 80, 0, 84),
      400: Color.fromARGB(255, 80, 0, 85),
      500: Color.fromARGB(255, 80, 0, 86),
      600: Color.fromARGB(255, 80, 0, 87),
      700: Color.fromARGB(255, 80, 0, 88),
      800: Color.fromARGB(255, 80, 0, 89),
      900: Color.fromARGB(255, 80, 0, 90),
    },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: MyRouter.router.routeInformationProvider,
      routeInformationParser: MyRouter.router.routeInformationParser,
      routerDelegate: MyRouter.router.routerDelegate,
      // routerConfig: MyRouter.router,
      // home: const LoginView(),
    );
  }
}
