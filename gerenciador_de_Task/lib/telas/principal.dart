import 'package:flutter/material.dart';
import 'package:gerenciador_de_task/componentes/task.dart';

class Tela_Principal extends StatefulWidget {
  const Tela_Principal({super.key});

  @override
  State<Tela_Principal> createState() => _Tela_PrincipalState();
}

class _Tela_PrincipalState extends State<Tela_Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            color: Colors.blue,
          ),
          Container(
            height: 530,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListView(children: [Task()],),
          )
        ],
      ),
    );
  }
}
