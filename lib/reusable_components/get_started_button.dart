import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  String text;
  double height;
  double width;
  VoidCallback function;
  Color textcolor;
  Color background;
  Color border;
  GetStarted({
    Key? key,
    this.text = 'GET STARTED',
    this.height = 60,
    this.width = double.infinity,
    required this.function,
    this.textcolor = Colors.white,
    this.background = Colors.teal,
    this.border =Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          color: textcolor,
        ),
      ),
      color: background,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: border)),
    );
  }
}
