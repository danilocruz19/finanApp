import 'package:flutter/material.dart';

class EntradasFunc extends StatefulWidget {
  final Function(int) onSaldoChanged;
  const EntradasFunc({super.key, required this.onSaldoChanged});

  @override
  State<EntradasFunc> createState() => _EntradasFuncState();
}

class _EntradasFuncState extends State<EntradasFunc> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _gastoController = TextEditingController();
    TextEditingController _gastovalorController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Entradas",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepPurpleAccent,
            ),
            width: 350,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _gastoController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Gasto',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white))),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _gastovalorController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Valor Do Gasto',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white))),
                    keyboardType: TextInputType.number,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                    child: TextButton(
                      onPressed: () {
                       if(_formKey.currentState!.validate()){
                         int valor = int.tryParse(_gastovalorController.text) ?? 0;
                         widget.onSaldoChanged(valor);
                         Navigator.pop(context);
                       }
                      },
                      child: Text("Registrar Entrada"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
