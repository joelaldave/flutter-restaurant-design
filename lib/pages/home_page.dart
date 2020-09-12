import 'package:flutter/material.dart';
import 'package:restaurant_design/widgets/buscador.dart';
import 'package:restaurant_design/widgets/card_comida.dart';
import 'package:restaurant_design/widgets/comidas_cuadro_small.dart';
import 'package:restaurant_design/widgets/recomendados_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 25,
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage('assets/noun_Home_1859323.png'),
                  ),
                  Image(image: AssetImage('assets/shop-1.png')),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff5117AC)),
              height: 55,
              width: 55,
              padding: EdgeInsets.all(12),
              child: Image(image: AssetImage('assets/noun_basket_821481.png')),
            ),
            Container(
              height: 25,
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/noun_Favorite_-7.png')),
                  Image(
                      image: AssetImage(
                          'assets/christopher-campbell-rDEOVtE-1.png')),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _appBar(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Explorar categorias',
                      style: TextStyle(
                          color: Color(0xff153E73),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Ver todos',
                      style: TextStyle(
                          color: Color(0xffcbd1d4),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                _productos(),
                Container(
                  child: Text(
                    'Productos Polulares',
                    style: TextStyle(
                        color: Color(0xff153E73),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                ),
                _cardsProductos(),
                Container(
                  child: Text(
                    'Recomendados',
                    style: TextStyle(
                        color: Color(0xff153E73),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardRecomendado(),
                      cardRecomendado(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_appBar() {
  return Material(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          buscador(),
          Text(
            'Inicio',
            style: TextStyle(
                color: Color(0xff5117AC),
                fontWeight: FontWeight.w500,
                fontSize: 23),
          ),
          SizedBox(
            width: 50,
          ),
          Row(
            children: [
              Icon(
                Icons.add_alert,
                color: Color(0xff2DD2C7),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.adjust,
                color: Color(0xffF57694),
              )
            ],
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ),
  );
}

_cardsProductos() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        cardComida(
            assetImage: 'assets/pizza.png',
            like: 'assets/noun_Favorite_-7.png',
            precio: "\$ 12.58",
            titulo: 'Pizza Clásica',
            subtitulo: 'Salsa Clásica de la casa'),
        cardComida(
            assetImage: 'assets/burger.png',
            like: 'assets/noun_Favorite_-5.png',
            precio: "\$ 12.58",
            titulo: 'Hamburguesa mix',
            subtitulo: 'Doble carne con queso'),
        cardComida(
            assetImage: 'assets/burger.png',
            like: 'assets/noun_Favorite_-5.png',
            precio: "\$ 12.58",
            titulo: 'Hamburguesa mix',
            subtitulo: 'Doble carne con queso'),
      ],
      verticalDirection: VerticalDirection.down,
    ),
  );
}

_productos() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xffE9F3D4),
        ),
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xffC6F2E8),
        ),
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xffFFEFCD),
        ),
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xffFFD8D8),
        ),
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xffC6F2E8),
        ),
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xff153E73),
        ),
        cuadroComida(
          imageAsset: 'assets/burger_122704.png',
          texto: 'Burger',
          color: Color(0xffFFEFCD),
        ),
      ],
      verticalDirection: VerticalDirection.down,
    ),
  );
}
