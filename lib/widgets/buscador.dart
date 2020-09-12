import 'package:flutter/material.dart';

Widget buscador() {
  return Container(
    width: 150,
    height: 30,
    padding: EdgeInsets.only(bottom: 2),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ]),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.all(7),
          child: Image(
            image: AssetImage('assets/noun_Search_1221179.png'),
            width: 5,
            height: 12,
          ),
        ),
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
        hintText: 'Buscar',
        hintStyle: TextStyle(
          color: Color(0xffcbd1d4),
          fontSize: 10,
        ),
      ),
    ),
  );
}
