import 'package:flutter/material.dart';

Widget cardRecomendado() {
  return Card(
    margin: EdgeInsets.only(left: 10, bottom: 10),
    elevation: 3,
    borderOnForeground: true,
    child: Container(
      height: 110,
      width: 230,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Image(image: AssetImage('assets/drinks.png')),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Naturales',
                        style: TextStyle(
                            color: Color(0xff515F65),
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                      ),
                      Container(
                        //margin: EdgeInsets.only(right: 14, top: 14),
                        height: 16,
                        alignment: Alignment.bottomLeft,
                        child: Image(
                            image: AssetImage('assets/noun_Favorite_-5.png')),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Malteadas Tropicales',
                    style: TextStyle(
                        color: Color(0xff153E73),
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Elaborado con jugos naturales',
                    style: TextStyle(
                        color: Color(0xff515F65),
                        fontWeight: FontWeight.w300,
                        fontSize: 7),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$ 12.58",
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
          ),
        ],
      ),
    ),
  );
}
