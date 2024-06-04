import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gerenciador_de_task/componentes/task.dart';

class Tela_Principal extends StatefulWidget {
  const Tela_Principal({super.key});

  @override
  State<Tela_Principal> createState() => _Tela_PrincipalState();
}

List<Widget> criardado(int quanto, {Task? tarefa, Container? caixa}){
  print('chamou');
  List<Widget> dados = [];
  for(int num = 0; num <= quanto; num++){
    dados.add(Row(
      children: [
        Center(child: tarefa.runtimeType == Task? Task():Container(width: 20, height: 20, color: Colors.white,))
      ],
    ));
  }
  return dados;
}

class _Tela_PrincipalState extends State<Tela_Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            color: Colors.blue,
            child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: criardado(10).length,itemBuilder: (context, int){return criardado(10, caixa: Container())[int];}),
          ),
          Container(
            height: 530,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListView.builder(
              itemCount: criardado(10, tarefa: Task()).length,
              itemBuilder: (context, int valor) {
                return criardado(10, tarefa: Task())[valor];
              },
            ),
          )
        ],
      ),
    );
  }
}
