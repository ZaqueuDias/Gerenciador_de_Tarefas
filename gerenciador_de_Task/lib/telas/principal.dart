import 'package:flutter/material.dart';

class Tela_Principal extends StatefulWidget {
  const Tela_Principal({super.key});

  @override
  State<Tela_Principal> createState() => _Tela_PrincipalState();
}

class _Tela_PrincipalState extends State<Tela_Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
