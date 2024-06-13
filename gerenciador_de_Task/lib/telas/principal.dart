import 'package:flutter/material.dart';

import '../componentes/task.dart';

class Tela_Principal extends StatefulWidget {
  const Tela_Principal({super.key});

  @override
  State<Tela_Principal> createState() => _Tela_PrincipalState();
}

class _Tela_PrincipalState extends State<Tela_Principal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromRGBO(225, 228, 196, 8),
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Image.asset('imagens/imagem01.png'),
        ),
        Container(
          height: 512,
          color: Colors.white,
          child: ListView.builder(itemCount: gerartaske(10).length,itemBuilder: (contexto, numero){
          return gerartaske(10)[numero];
        }),)
      ],
    );
  }
}


List<Widget> gerartaske(int quantas){
  List<Widget> db = [];
  for(int num = 1; num <= quantas; num ++){
    db.add(Task());
  }
  return db;
}