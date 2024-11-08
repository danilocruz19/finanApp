import 'package:flutter/material.dart';

class SaidasFunc extends StatefulWidget {
  const SaidasFunc({super.key});

  @override
  State<SaidasFunc> createState() => _SaidasFuncState();
}

class _SaidasFuncState extends State<SaidasFunc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: () {
            setState(() {

            });
          }, child: Text("-")),
        ),
      ),
    );
  }
}
