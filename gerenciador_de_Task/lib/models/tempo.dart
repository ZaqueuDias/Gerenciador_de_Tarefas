import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horario'),
      ),
      body: Center(child: Row(children: [Container(), Container(), Container()],)),
    );
  }
}

/*
 DateTime novo = DateTime.now();
 DateTime teste = DateTime(2024,6,17);
 Text('ANO: ${novo.year}'),
 Text('MÊS: ${novo.month}'),
 Text('DIA: ${novo.day}'),
 Text('HORAS: ${novo.hour}'),
 Text('minutos ${novo.minute}'),
 Text('${teste.weekday}')
* */


// AGRUPAR INFORMAÇÕES SOBRE UM DETERMINADO ASSUNTO.

