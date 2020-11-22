import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function function;
  final String text;
  final Color color;
  final double height;

  Button(
      {@required this.function,
      @required this.text,
      this.color,
      this.height = 60.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color == null ? Colors.blue : color),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        onPressed: function,
      ),
    );
  }
}
