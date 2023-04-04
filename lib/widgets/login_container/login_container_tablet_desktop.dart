import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hellblog/consts/colors.dart';
import 'package:hellblog/router/router.dart';
import 'package:hellblog/widgets/text_form_field/text_field_tablet_desktop.dart';

class LoginContainerTabletDesktop extends StatefulWidget {
  const LoginContainerTabletDesktop({Key? key}) : super(key: key);

  @override
  _LoginContainerTabletDesktopState createState() =>
      _LoginContainerTabletDesktopState();
}

class _LoginContainerTabletDesktopState
    extends State<LoginContainerTabletDesktop> {
  final TextStyle linkedstyle = const TextStyle(color: purple, fontSize: 15);
  TextStyle defStyle = const TextStyle(color: Colors.grey, fontSize: 15);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obsecurePasswordFlag = true;

  @override
  void initState() {
    _emailController;
    _passwordController;
    _obsecurePasswordFlag;
    super.initState();
  }

  void clearEmailController() {
    setState(() {
      _emailController.clear();
    });
  }

  void obsecurePassword() {
    setState(() {
      _obsecurePasswordFlag = !_obsecurePasswordFlag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const _LoginText(),
            const SizedBox(height: 100),
            const _WelcomeText(),
            const SizedBox(height: 30),
            myTextField(
              controller: _emailController,
              name: "Email",
              icon: Icons.cancel,
              textInputType: TextInputType.emailAddress,
              onPressed: clearEmailController,
              obscureFlag: false,
            ),
            const SizedBox(height: 5.0),
            myTextField(
              controller: _passwordController,
              name: "Пароль",
              icon: Icons.remove_red_eye,
              textInputType: TextInputType.visiblePassword,
              onPressed: obsecurePassword,
              obscureFlag: _obsecurePasswordFlag,
            ),
            _ForgorPassword(linkedstyle: linkedstyle),
            const SizedBox(height: 20),
            const _LoginButton(),
            const SizedBox(height: 100),
            _NoAccount(defStyle: defStyle, linkedstyle: linkedstyle),
            const SizedBox(height: 10),
            _OrLabel(defStyle: defStyle),
            const SizedBox(height: 10),
            _EnterAsGuest(defStyle: defStyle, linkedstyle: linkedstyle),
          ],
        ),
      ),
    );
  }

  // SizedBox _passwordTextFormField() {
  //   return SizedBox(
  //     height: 60,
  //     child: TextFormField(
  //       keyboardType: TextInputType.emailAddress,
  //       textInputAction: TextInputAction.done,
  //       decoration: InputDecoration(
  //         labelText: "Пароль",
  //         hintText: "Введите пароль",
  //         contentPadding: const EdgeInsets.only(left: 20),
  //         suffixIcon: Padding(
  //           padding: const EdgeInsets.only(
  //             right: 10,
  //           ),
  //           child: IconButton(
  //             onPressed: () => () {},
  //             icon: const Icon(
  //               Icons.remove_red_eye,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class _EnterAsGuest extends StatelessWidget {
  const _EnterAsGuest({
    Key? key,
    required this.defStyle,
    required this.linkedstyle,
  }) : super(key: key);

  final TextStyle defStyle;
  final TextStyle linkedstyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "Войти как ",
            style: defStyle,
          ),
          TextSpan(
            text: "гость",
            style: linkedstyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}

class _NoAccount extends StatelessWidget {
  const _NoAccount({
    Key? key,
    required this.defStyle,
    required this.linkedstyle,
  }) : super(key: key);

  final TextStyle defStyle;
  final TextStyle linkedstyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(text: "Нет аккаунта? ", style: defStyle),
          TextSpan(
            text: "Создать",
            style: linkedstyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}

class _OrLabel extends StatelessWidget {
  const _OrLabel({
    Key? key,
    required this.defStyle,
  }) : super(key: key);

  final TextStyle defStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 250,
      child: Row(
        children: <Widget>[
          Container(
            height: 1.0,
            width: 100.0,
            color: Colors.grey,
          ),
          Text(
            " или ",
            style: defStyle,
          ),
          Container(
            height: 1.0,
            width: 100.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {
          GoRouter.of(context).go(MyRouter.home);
        },
        child: const Text(
          "Войти",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}

class _ForgorPassword extends StatelessWidget {
  const _ForgorPassword({
    Key? key,
    required this.linkedstyle,
  }) : super(key: key);

  final TextStyle linkedstyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: "Забыли пароль?",
            style: linkedstyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ),
      ],
    );
  }
}

class _LoginText extends StatelessWidget {
  const _LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "LOGIN",
      style: TextStyle(
        color: Colors.black,
        fontSize: 50,
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Добро пожаловать!",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 20,
      ),
    );
  }
}
