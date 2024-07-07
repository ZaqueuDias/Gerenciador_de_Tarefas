import 'package:flutter/cupertino.dart';

import '../componentes/task.dart';

class Gerenciador_Atualizacao extends ChangeNotifier{
  List<Task> tarefas = [];
  List<String> nomes = [];
  List<Map<String, String>> horario = [];
  criar_tesk(){
    tarefas.add(Task(nome_tarefa: nomes.last, horario: horario.last));
    notifyListeners();
  }

 List<Task> mostrar_tarefas(){
   return tarefas;
  }
}
