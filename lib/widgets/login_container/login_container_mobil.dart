import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hellblog/consts/colors.dart';
import 'package:hellblog/router/router.dart';
import 'package:hellblog/widgets/text_form_field/text_field_mobile.dart';

class LoginContainerMobil extends StatefulWidget {
  const LoginContainerMobil({Key? key}) : super(key: key);

  @override
  _LoginContainerMobilState createState() => _LoginContainerMobilState();
}

class _LoginContainerMobilState extends State<LoginContainerMobil> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obsecurePasswordFlag = true;
  TextStyle defStyle = const TextStyle(color: Colors.grey, fontSize: 15);

  @override
  void initState() {
    _emailController;
    obsecurePasswordFlag;
    super.initState();
  }

  void clearEmailController() {
    setState(() {
      _emailController.clear();
    });
  }

  void obsecurePassword() {
    setState(() {
      obsecurePasswordFlag = !obsecurePasswordFlag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkPurple,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const _LoginLabel(),
              myTextField(
                controller: _passwordController,
                name: "Пароль",
                icon: Icons.cancel,
                textInputType: TextInputType.emailAddress,
                onPressed: clearEmailController,
                obscureFlag: false,
              ),
              const SizedBox(height: 10),
              myTextField(
                controller: _passwordController,
                name: "Пароль",
                icon: Icons.remove_red_eye,
                textInputType: TextInputType.visiblePassword,
                onPressed: obsecurePassword,
                obscureFlag: obsecurePasswordFlag,
              ),
              _ForgotPassword(defStyle: defStyle),
              const SizedBox(height: 25),
              const _LoginButton(),
              const SizedBox(height: 8),
              _CreateAccount(defStyle: defStyle),
              const SizedBox(height: 20),
              const _HellboyAsset(),
            ],
          ),
        ),
      ),
    );
  }

  // SizedBox _passwordTextFormField() {
  //   return SizedBox(
  //     height: 60,
  //     child: TextFormField(
  //       controller: _passwordController,
  //       keyboardType: TextInputType.visiblePassword,
  //       obscureText: obsecurePasswordFlag,
  //       decoration: InputDecoration(
  //         labelText: "Пароль",
  //         hintText: "Введите пароль",
  //         suffixIcon: Padding(
  //           padding: const EdgeInsets.only(right: 5.0),
  //           child: IconButton(
  //             onPressed: obsecurePassword,
  //             icon: const Icon(Icons.remove_red_eye),
  //           ),
  //         ),
  //         contentPadding: const EdgeInsets.only(left: 15),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(5),
  //           borderSide: const BorderSide(
  //             width: 2,
  //             color: Colors.grey,
  //           ),
  //         ),
  //         enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(5),
  //           borderSide: const BorderSide(
  //             width: 2,
  //             color: Colors.grey,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class _LoginLabel extends StatelessWidget {
  const _LoginLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Добро пожаловать!",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword({
    Key? key,
    required this.defStyle,
  }) : super(key: key);

  final TextStyle defStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: "Забыли пароль?",
            style: defStyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ),
      ],
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
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: darkPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {
          GoRouter.of(context).go(MyRouter.home);
        },
        child: const Text(
          "Войти",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

class _CreateAccount extends StatelessWidget {
  const _CreateAccount({
    Key? key,
    required this.defStyle,
  }) : super(key: key);

  final TextStyle defStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Нет аккаунта? Создать",
        style: defStyle,
        recognizer: TapGestureRecognizer()..onTap = () {},
      ),
    );
  }
}

class _HellboyAsset extends StatelessWidget {
  const _HellboyAsset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/registration_page/hellboy2.png",
      height: 210,
    );
  }
}
