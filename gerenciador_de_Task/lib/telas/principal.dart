import 'package:flutter/material.dart';
import 'package:gerenciador_de_task/models/dados_provider.dart';
import 'package:gerenciador_de_task/telas/formulario.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../componentes/task.dart';

class Tela_Principal extends StatefulWidget {
  const Tela_Principal({super.key});

  @override
  State<Tela_Principal> createState() => _Tela_PrincipalState();
}

class _Tela_PrincipalState extends State<Tela_Principal> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      Column(
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
            child: ListView.builder(
                itemCount: Provider.of<Gerenciador_Atualizacao>(context).mostrar_tarefas().length,
                itemBuilder: (contexto, numero) {
                  return Provider.of<Gerenciador_Atualizacao>(context).mostrar_tarefas()[numero];
                }),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            width: 100,
            height: 50,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: Formulario(),
                        type: PageTransitionType.size,
                        duration: Duration(milliseconds: 700),
                        reverseDuration: Duration(milliseconds: 700),
                        alignment: Alignment.center));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            )),
      )
    ]);
  }
}

