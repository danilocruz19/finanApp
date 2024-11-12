import 'package:flutter/cupertino.dart';

class Saldo with ChangeNotifier{

  double _saldo = 0;
  double get saldo => _saldo;

  void adicionarSaldo(double novoSaldo){
    _saldo = novoSaldo;
    notifyListeners();
  }
}