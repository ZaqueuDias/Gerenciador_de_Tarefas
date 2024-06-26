import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  DateTime novo = DateTime.now(); //ano atual
  DateTime anomanual = DateTime(2024,6, 31);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TESTE'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(children: gerar(),),
    );
  }
}

List<Text> gerar(){
  DateTime app = DateTime(2024,6, 31);
  List<Text> dado = [];
  for(int num = 1; num <= 32; num++){
    app = DateTime(2024, 06, num);
    dado.add(Text('${app.weekday}'));
  }
  return dado;
}
