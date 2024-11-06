import 'package:flutter/material.dart';

class Relatorio extends StatefulWidget {
  const Relatorio({super.key});

  @override
  State<Relatorio> createState() => _RelatorioState();
}

class _RelatorioState extends State<Relatorio> {

  List<Widget> relatorioLista = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
    );
  }
}
