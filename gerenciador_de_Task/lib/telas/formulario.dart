import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gerenciador_de_task/telas/data.dart';
import 'package:gerenciador_de_task/telas/horario.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';

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
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 8.0, right: 8.0),
                child: TextFormField(
                    decoration: decoracaoinput('Tarefa do dia...')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: Horario(),
                          type: PageTransitionType.scale,
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 700),
                          reverseDuration: Duration(milliseconds: 700)),
                    );
                  },
                  child: Text(
                    'Definir horario',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {Navigator.push(context, PageTransition(child: Data(), type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 700),
                      reverseDuration: Duration(milliseconds: 700)));},
                  child: Text(
                    'Definir Data',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Concluir',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),

            ],
          ),
        )),
      ),
    );
  }
}
