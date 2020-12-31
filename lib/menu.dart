import 'package:aplicacion_voz/dificil.dart';
import 'package:aplicacion_voz/facil.dart';
import 'package:aplicacion_voz/medio.dart';
import 'package:aplicacion_voz/oracion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('APRENDE A PRONUNCIAR INGLES',
          style: TextStyle(
              fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Dificultad(
              ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Facil()),
                );
              },
              size: size,
              text: 'NIVEL FACIL',
              color: Colors.lightGreen.withOpacity(1),
            ),
            Dificultad(
              ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Medio()),
                );
              },
              size: size,
              text: 'NIVEL MEDIO',
              color: Colors.yellow.withOpacity(1),
            ),
            Dificultad(
              ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dificil()),
                );
              },
              size: size,
              text: 'NIVEL DIFICIL',
              color: Colors.red.withOpacity(1),
            ),
          ],
        ),
      ),
    );
  }
}

class Dificultad extends StatelessWidget {
  final String text;
  final Color color;
  final GestureTapCallback ontap;
  const Dificultad({
    Key key,
    @required
    this.size,
    this.text,
    this.color,
    this.ontap
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        width: size.width*0.9,
        height: size.height*0.15,
        color: color,
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}