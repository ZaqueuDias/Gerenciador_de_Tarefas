import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  String nome_tarefa;
  Map<String, String> horario;
  Task({super.key, required this.nome_tarefa, required this.horario});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  dynamic cores = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            color: cores,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.nome_tarefa,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${widget.horario['hora']}:${widget.horario['minutos']}',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      cores = Colors.green;
                      setState(() {});
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(onTap: (){}, child: Icon(Icons.delete),)
          ],
        ),
      ),
    );
  }
}
