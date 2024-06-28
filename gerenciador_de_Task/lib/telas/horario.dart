import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../funcoes/hora_minuto.dart';

class Horario extends StatefulWidget {
  const Horario({super.key});

  @override
  State<Horario> createState() => _HorarioState();
}

class _HorarioState extends State<Horario> {
  int horas = 0;
  int minutos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horario', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Horas',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text('Minutos', style: TextStyle(fontSize: 20),),
              )],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NumberPicker(
                            minValue: 0,
                            maxValue: 23,
                            value: horas,
                            zeroPad: true,
                            onChanged: (valor) {horas = valor; setState(() {});},
                            decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.black), bottom: BorderSide(color: Colors.black))),
                          ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NumberPicker(
                minValue: 0,
                maxValue: 59,
                value: minutos,
                zeroPad: true,
                onChanged: (valor) {minutos = valor; setState(() {});},
                decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.black), bottom: BorderSide(color: Colors.black))),
              ),
            ),
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              width: 200,
              child: ElevatedButton(onPressed: (){}, child: Text('Definer', style: TextStyle(color: Colors.white, fontSize: 15),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
