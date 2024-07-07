import 'package:flutter/material.dart';
import 'package:gerenciador_de_task/models/dados_provider.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

import '../funcoes/hora_minuto.dart';

class Horario extends StatefulWidget {
  const Horario({super.key});

  @override
  State<Horario> createState() => _HorarioState();
}

class _HorarioState extends State<Horario> {
  Map<String, String> horas = {'hora': '00', 'minutos': '00'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Horario',
          style: TextStyle(color: Colors.white),
        ),
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
                child: Text(
                  'Horas',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  'Minutos',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NumberPicker(
                  minValue: 0,
                  maxValue: 23,
                  value: int.parse(horas['hora']!),
                  zeroPad: true,
                  onChanged: (valor) {
                    if(valor.toString().length == 1){
                      horas['hora'] = '0${valor}';
                    }else{
                      horas['hora'] = valor.toString();
                    }
                    setState(() {

                    });
                  },
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NumberPicker(
                  minValue: 0,
                  maxValue: 59,
                  value: int.parse(horas['minutos']!),
                  zeroPad: true,
                  onChanged: (valor) {
                    if(valor.toString().length == 1){
                      horas['minutos'] = '0${valor}';
                    }else{
                      horas['minutos'] = valor.toString();
                    }
                    setState(() {

                    });
                  },
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black))),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<Gerenciador_Atualizacao>(context, listen: false)
                      .horario
                      .add(horas);
                  Navigator.pop(context);
                },
                child: Text(
                  'Definer',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
