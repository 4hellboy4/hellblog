import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  myTextField({
    Key? key,
    required this.name,
    required this.icon,
    required this.onPressed,
    required this.obscureFlag,
    required this.textInputType,
    required this.controller,
  }) : super(key: key);
  String name;
  IconData? icon;
  TextInputType? textInputType;
  Function()? onPressed;
  bool obscureFlag;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: controller,
        obscureText: obscureFlag,
        keyboardType: textInputType,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: name,
          labelStyle: const TextStyle(fontSize: 18),
          hintText: "Введите ${name.toLowerCase()}",
          contentPadding: const EdgeInsets.only(left: 20),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
            ),
          ),
        ),
      ),
    );
  }
}
