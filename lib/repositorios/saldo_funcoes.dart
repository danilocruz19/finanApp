import 'package:flutter/cupertino.dart';

class SaldoComFuncoes extends ChangeNotifier{
  int _saldo = 0;
  int get count => _saldo;

  void entradasSaldo(int entrada){
    _saldo + entrada;
  }

}