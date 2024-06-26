import 'package:flutter/material.dart';

import '../models/mes_models.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

List<Widget> gerarsemana({
  double tamanho = 20,
  Color cor = Colors.black,
}) {
  List<String> dias_da_semana = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];
  List<Widget> semana_na_tela = [];
  for (int num = 0; num < dias_da_semana.length; num++) {
    semana_na_tela.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          dias_da_semana[num],
          style: TextStyle(fontSize: tamanho, color: cor),
        ),
      ),
    );
  }
  return semana_na_tela;
}

class _DataState extends State<Data> {
  Mes mes = Mes((){});
  @override
  Widget build(BuildContext context) {
    void atualizar(){
      setState(() {});}
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Data', style: TextStyle(color: Colors.white),), Text('${DateTime.now().year}', style: TextStyle(color: Colors.white),)],),
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Mes(atualizar).mes_atual(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 310,
            width: 350,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: Mes(atualizar).mes()[7]!),
                Column(
                  children: Mes(atualizar).mes()[1]!,
                ),
                Column(
                  children: Mes(atualizar).mes()[2]!,
                ),
                Column(
                  children: Mes(atualizar).mes()[3]!,
                ),
                Column(
                  children: Mes(atualizar).mes()[4]!,
                ),
                Column(
                  children: Mes(atualizar).mes()[5]!,
                ),
                Column(
                  children: Mes(atualizar).mes()[6]!,
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Definir Data', style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        )
      ]),
    );
  }
}
