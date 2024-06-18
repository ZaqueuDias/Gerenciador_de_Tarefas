import 'package:flutter/material.dart';

InputDecoration decoracaoinput(String textofundo) {
  return InputDecoration(
      hintText: textofundo,
      fillColor: Colors.grey,
      filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide(color: Colors.black, width: 1.5)) ,
  );
}

/*
DateTime now = DateTime.now();
int month = now.month;
int year = now.year;

print("Mês atual: $month");
print("Ano atual: $year");
*/