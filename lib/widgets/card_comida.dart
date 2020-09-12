import 'package:flutter/material.dart';

Widget cardComida(
    {String assetImage,
    String like,
    String precio,
    String titulo,
    String subtitulo}) {
  return Card(
    margin: EdgeInsets.only(left: 10, bottom: 10),
    elevation: 3,
    borderOnForeground: false,
    child: Container(
      height: 220,
      width: 180,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 14, top: 14),
            height: 16,
            alignment: Alignment.topRight,
            child: Image(image: AssetImage(like)),
          ),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[300],
                  blurRadius: 8.0, // has the effect of softening the shadow
                  spreadRadius: 0.4, // has the effect of extending the shadow
                  offset: Offset(
                    0, // horizontal, move right 10
                    0, // vertical, move down 10
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: Image(image: AssetImage(assetImage)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 25, bottom: 6),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                      color: Color(0xff515F65),
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  subtitulo,
                  style: TextStyle(
                      color: Color(0xff515F65),
                      fontWeight: FontWeight.w300,
                      fontSize: 8),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  precio,
                  style: TextStyle(
                      color: Color(0xff515F65),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffe3dede),
                          blurRadius:
                              4.0, // has the effect of softening the shadow
                          spreadRadius:
                              0.4, // has the effect of extending the shadow
                          offset: Offset(
                            0, // horizontal, move right 10
                            0, // vertical, move down 10
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff515F65),
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
