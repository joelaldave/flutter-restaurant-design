import 'package:flutter/material.dart';

Widget cuadroComida({String imageAsset, String texto, Color color}) {
  return Container(
    padding: EdgeInsets.only(left: 19),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: color,
          ),
          child: Image(
            image: AssetImage(imageAsset),
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          texto,
          style: TextStyle(
            color: Color(0xff153E73),
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
