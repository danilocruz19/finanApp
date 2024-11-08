import 'package:financasapp/components/botoes_de_acoes.dart';
import 'package:financasapp/components/card_principal_saldo.dart';
import 'package:financasapp/funcoes/entradas_func.dart';
import 'package:financasapp/funcoes/saidas_func.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int saldo = 2133;

  void atualizarSaldo(int novoSaldo) {
    setState(() {
      saldo += novoSaldo;
    });
  }

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
                builder: (context) => EntradasFunc(
                  onSaldoChanged: atualizarSaldo,
                ),
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
        onPressed: () {
          setState(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SaidasFunc()));
          });
        },
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
            CardInfos(
              saldo: saldo,
              onSaldoChanged: atualizarSaldo,
            ),
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
          ],
        ));
  }
}
