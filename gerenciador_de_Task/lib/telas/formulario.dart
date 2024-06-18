import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:numberpicker/numberpicker.dart';

import '../componentes/decoracao_input.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  int horas = 0;
  int minutos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        backgroundColor: Color.fromRGBO(225, 228, 196, 8),
      ),
      body: Form(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(decoration: decoracaoinput('Tarefa do dia...')),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('horas', style: TextStyle(fontSize: 25),),
                  ), Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('minuto', style: TextStyle(fontSize: 25)),
                  )],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NumberPicker(
                      minValue: 0,
                      maxValue: 23,
                      value: horas,
                      zeroPad: true,
                      infiniteLoop: true,
                      onChanged: (valor) {
                        setState(() {
                          horas = valor;
                        });
                      },
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.black),
                              bottom: BorderSide(color: Colors.black))),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NumberPicker(
                      minValue: 0,
                      maxValue: 23,
                      value: horas,
                      zeroPad: true,
                      infiniteLoop: true,
                      onChanged: (valor) {
                        setState(() {
                          horas = valor;
                        });
                      },
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.black),
                              bottom: BorderSide(color: Colors.black))),
                    ),
                  ),],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
