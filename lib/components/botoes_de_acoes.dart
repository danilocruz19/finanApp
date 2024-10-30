import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BotoesFuncoes extends StatelessWidget {
  const BotoesFuncoes(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.text});

  final VoidCallback onPressed;
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:  onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurpleAccent,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          fixedSize: Size(100, 100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }
}
