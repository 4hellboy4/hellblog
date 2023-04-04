import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hellblog/utils/authentication/authentication.dart';
import 'package:hellblog/veiws/error_view/error_view.dart';
import 'package:hellblog/veiws/home_view/home_veiw.dart';
import 'package:hellblog/veiws/login_veiw/login_view.dart';

class MyRouter {
  static const login = "/login";
  static const home = "/";
  static const signUp = "/signUp";
  static const error = "/error";

  static Widget _homeViewRouterBuilder(
          BuildContext context, GoRouterState state) =>
      const HomeVeiw();
  static Widget _loginRouterBuilder(
          BuildContext context, GoRouterState state) =>
      const LoginView();

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      ErrorView(errorText: state.error.toString());

  static final _router = GoRouter(
    initialLocation: home,
    routes: <GoRoute>[
      GoRoute(
        path: home,
        builder: _homeViewRouterBuilder,
        redirect: (context, state) {
          if (isAuthenticated() == null) {
            return "/login";
          }
          return "/";
        },
      ),
      GoRoute(
        path: login,
        builder: _loginRouterBuilder,
      ),
    ],
    errorBuilder: errorWidget,
  );

  static GoRouter get router => _router;
}
