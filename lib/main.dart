import 'dart:async';
import 'package:aplicacion_voz/menu.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto AC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Menu()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children:[
                  TextSpan(
                    text: 'Aprende a' + '\n'+ 'pronunciar ingles',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
                'assets/images/eeuu.png',
                width: 250,
                height: 200,
            )
          ],
        ),
      ),
    );
  }
}
