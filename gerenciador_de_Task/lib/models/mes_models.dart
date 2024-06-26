import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mes {
  static DateTime valor_selecionado = DateTime(DateTime.now().year);
  void Function() funcao;
  static double fontesize = 10; // motivo de usar o static ->  The instance member 'fontesize' can't be accessed in an initializer
  Set<String> meses = {
    'janeiro', 'fevereiro', 'março',
    'Abril', 'Maio','Junho',
    'julho', 'agosto', 'Setembro',
    'outubro', 'Novembro', 'dezembro'
  };
  Map<int, List<Widget>> datas = {
    1: [Text('S', style: TextStyle(fontSize: fontesize),)],
    2: [Text('T', style: TextStyle(fontSize: fontesize))],
    3: [Text('Q', style: TextStyle(fontSize: fontesize))],
    4: [Text('Q', style: TextStyle(fontSize: fontesize))],
    5: [Text('S', style: TextStyle(fontSize: fontesize))],
    6: [Text('S', style: TextStyle(fontSize: fontesize))],
    7: [Text('D', style: TextStyle(fontSize: fontesize))]
  };
  Mes(this.funcao);

  Text mes_atual() {
    return Text('${meses.elementAt(DateTime.now().month - 1)}', style: TextStyle(fontSize: fontesize));
  }
  GestureDetector botao (int dia, Color cor, int mes){
    return GestureDetector(onTap: (){valor_selecionado = DateTime(DateTime.now().year, mes, dia); funcao();}, child: DateTime(DateTime.now().year, mes, dia) == valor_selecionado? Text('${valor_selecionado.day}', style: TextStyle(fontSize: fontesize, color: Colors.white, backgroundColor: Colors.red)): Text('${dia}', style: TextStyle(fontSize: fontesize, color: cor)));
  }

  void Mes_anterior() {
    // (DateTime.now().year, DateTime.now().month, 01).weekday == 7
    List<int> resultado = [];
    int dias = 1;
    while (true) {
      if (DateTime(DateTime.now().year, DateTime.now().month - 1 , dias).month == DateTime.now().month - 1) {
        resultado.add(dias);
      } else {
        break;
      }
      dias++;
    }
    if (DateTime(DateTime.now().year, DateTime.now().month, 1).weekday != 7) {
      for (int num = 1;
          num <= DateTime(DateTime.now().year, DateTime.now().month, 1).weekday;
          num++) {
        datas[DateTime(DateTime.now().year, DateTime.now().month - 1, resultado[resultado.length - num]).weekday]!.add(botao(resultado[resultado.length - num], Colors.grey, DateTime.now().month - 1));
      }
    }
  }
  void Mes_posterior(){
    Map<int, List<int>> atual_posterior = {
      DateTime.now().month: [], DateTime.now().month + 1:[]
    };
    int dias = 1;

    for(int num = DateTime.now().month; num <= DateTime.now().month + 1; num++){
      while(true){
        if(DateTime(DateTime.now().year, num, dias).month == num){
          atual_posterior[num]!.add(dias);
        }else{
          dias = 1;
          break;
        }
        dias++;
      }
    }
    if(DateTime(DateTime.now().year, DateTime.now().month + 1, 1).weekday != 7){
      var calculo = (42 - DateTime(DateTime.now().year, DateTime.now().month, 1).weekday) - atual_posterior[DateTime.now().month]!.last;
      for(int num = 0; num < calculo; num++){
        datas[DateTime(DateTime.now().year, DateTime.now().month +1, atual_posterior[DateTime.now().month + 1]![num]).weekday]!.add(botao(atual_posterior[DateTime.now().month + 1]![num], Colors.grey, DateTime.now().month + 1));
      }
    }
  }

  Map<int, List<Widget>> mes({double fontsize = 30}) {
    int dias = 01;
    fontesize = fontsize;
    Mes_anterior();
    while (true) {
      if (DateTime(DateTime.now().year, DateTime.now().month, dias).month == DateTime.now().month) {
        if(dias == DateTime.now().day){
          datas[DateTime(DateTime.now().year, DateTime.now().month, dias).weekday]!.add(botao(dias, Colors.blue, DateTime.now().month));
        }else{
          datas[DateTime(DateTime.now().year, DateTime.now().month, dias).weekday]!.add(botao(dias, Colors.black, DateTime.now().month));}
      } else {
        break;
      }
      dias++;
    }
    Mes_posterior();
    return datas;
  }
}

//datas[DateTime(DateTime.now().year, DateTime.now().month, dias).weekday]!.add(Text('${dias}', style: TextStyle(fontSize: fontesize)));
//Text('${atual_posterior[DateTime.now().month + 1]![num]}', style: TextStyle(fontSize: fontesize, color: Colors.grey))