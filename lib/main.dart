import 'package:financasapp/screens/relatorio.dart';
import 'package:financasapp/screens/tela_inicial_doapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: DefaultTabController(
        animationDuration: const Duration(milliseconds: 800),
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: const Text(
              'FinaAPP',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  child: Text(
                    "Tela Inicial",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.stacked_line_chart,
                    color: Colors.white,
                  ),
                  child: Text(
                    "Relatório",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
              indicatorColor: Colors.white,
              indicatorWeight: 8.0,
            ),
          ),
          body: const TabBarView(
            children: [
              InitialScreen(),
              Relatorio()
            ],
          ),
          backgroundColor: Colors.white70.withOpacity(0.8),
        ),
      ),
    );
  }
}
