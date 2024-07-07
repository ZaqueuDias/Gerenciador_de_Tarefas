import 'package:flutter/material.dart';
import 'package:gerenciador_de_task/telas/data.dart';
import 'package:gerenciador_de_task/telas/formulario.dart';
import 'package:gerenciador_de_task/telas/horario.dart';
import 'package:gerenciador_de_task/telas/principal.dart';
import 'package:gerenciador_de_task/teste.dart';
import 'package:provider/provider.dart';

import 'models/dados_provider.dart';
import 'models/tempo.dart';



void main() {
  runApp(ChangeNotifierProvider(create: (context){return Gerenciador_Atualizacao();}, child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tela_Principal(),),));
}

