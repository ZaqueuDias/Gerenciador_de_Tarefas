
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

Row HoraMinuto(void Function(void Function()) funcao){
  int horas = 0;
  int minutos = 0;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 50,
        height: 60,
        child: NumberPicker(
          minValue: 0,
          maxValue: 23,
          value: horas,
          zeroPad: true,
          infiniteLoop: true,
          onChanged: (valor) {
            funcao((){horas = valor;});
          },
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black))),
        ),
      ),
    ),Padding(
      padding: const EdgeInsets.all(8.0),
      child: NumberPicker(
        minValue: 0,
        maxValue: 23,
        value: horas,
        zeroPad: true,
        infiniteLoop: true,
        onChanged: (valor) {
          funcao((){minutos = valor;});
        },
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black))),
      ),
    ),],
  );
}