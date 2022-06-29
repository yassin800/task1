import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  String text;
  TextEditingController controller;
  Color border;
  Widget? preffix;
  bool val;
  TextContainer({
    Key? key,
    required this.text,
    required this.controller,
    this.border = const Color(0Xff707070),
    this.preffix,
    this.val = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: val,
      decoration: InputDecoration(
          prefix: preffix,
          hintText: text,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: border,
            ),
          ),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: border))),
    );
  }
}
