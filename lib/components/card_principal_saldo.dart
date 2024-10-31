import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardInfos extends StatefulWidget{

  final int saldo;
  final Function(int) onSaldoChanged;

  const CardInfos({
    super.key,
    required this.saldo,
    required this.onSaldoChanged,
  });

  @override
  State<CardInfos> createState() => _CardInfosState();
}

String formataNumero(int numero) {
  final formatter = NumberFormat("#,##0.00", "pt_BR");
  return formatter.format(numero);
}

class _CardInfosState extends State<CardInfos> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black87,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 1.75))
            ]),
        width: double.infinity,
        height: 141,
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Saldo Disponível",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        style: TextButton.styleFrom(fixedSize: Size(20, 20)),
                        onPressed: () {
                          setState(() {
                            opacity = !opacity;
                          });
                        },
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Colors.deepPurpleAccent,
                        ),
                      )
                    ],
                  ),
                  Visibility(
                    visible: opacity,
                    child: Text(
                      "R\$ ${formataNumero(widget.saldo)}",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurpleAccent),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
