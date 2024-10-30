import 'package:financasapp/components/botoes_de_acoes.dart';
import 'package:financasapp/components/card_principal_saldo.dart';
import 'package:financasapp/funcoes/entradas_func.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> iconesFuncoes = [
      BotoesFuncoes(
        onPressed: () {},
        icon: Icon(
          Icons.hourglass_bottom,
          color: Colors.white,
          size: 50,
        ),
        text: 'Histórico',
      ),
      BotoesFuncoes(
        onPressed: () {
         setState(() {
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) => EntradasFunc(),
             ),
           );
         });
        },
        icon: Icon(
          Icons.attach_money,
          color: Colors.white,
          size: 50,
        ),
        text: 'Entradas',
      ),
      BotoesFuncoes(
        onPressed: () {},
        icon: Icon(
          Icons.money_off,
          color: Colors.white,
          size: 50,
        ),
        text: 'Saídas',
      )
    ];

    return Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CardInfos(),
            SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [...iconesFuncoes],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: SizedBox(
                width: 500,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.deepPurpleAccent),
                  onPressed: () {},
                  child: Text(
                    "Ver relatório",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
