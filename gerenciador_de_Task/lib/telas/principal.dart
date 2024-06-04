import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gerenciador_de_task/componentes/task.dart';

class Tela_Principal extends StatefulWidget {
  const Tela_Principal({super.key});

  @override
  State<Tela_Principal> createState() => _Tela_PrincipalState();
}

List<Widget> criardado(int quanto, {Task? tarefa, Container? caixa}) {
  print('chamou');
  List<Widget> dados = [];
  for (int num = 0; num <= quanto; num++) {
    dados.add(Row(
      children: [
        Center(
            child: tarefa.runtimeType == Task
                ? Task()
                : Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
              child: Text('$num', style: TextStyle(fontSize: 30),),
                  ))
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
        children: [
          Container(
            color: Colors.blue,
          ),
          Column(
            children: [
              Text('data'),
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: criardado(10, caixa: Container()).length,
                      itemBuilder: (context, int) {
                        return criardado(10)[int];
                      })),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))),
                child: ListView.builder(itemCount: criardado(10, tarefa: Task()).length,itemBuilder: (context, int){return criardado(10, tarefa: Task())[int];}),
              )
            ],
          )
        ],
      ),
    );
  }
}
