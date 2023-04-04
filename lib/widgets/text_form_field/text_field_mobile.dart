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
        keyboardType: textInputType,
        obscureText: obscureFlag,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: name,
          hintText: "Введите $name",
          contentPadding: const EdgeInsets.only(left: 15),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
