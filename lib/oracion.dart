import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';

class Oracion {
  String oracion;
  Random r = new Random();
  Map<int, String> oracionFacil = {

    9 : 'Good morning',
    8 : 'See you later',
    7 : 'The cat is black',
    6 : 'My mom works',
    5 : 'She is intelligent',
    4 : 'I play with my friends',
    3 : 'I have a parrot',
    2 : 'My father is tall',
    1 : 'The dog is not white',
    0 : 'The plants are green',

  };
  Map<int, String> oracionIntermedio = {

    9 : 'She reads the newspaper every day',
    8 : 'We come to school by bus',
    7 : 'The dog chases the cat all around the house',
    6 : 'He studies for his english class',
    5 : 'They are cooking pasta now',
    4 : 'You should go to the dentist',
    3 : 'They heard just one song',
    2 : 'I love eating chocolate',
    1 : 'They bought a new car',
    0 : 'I am painting my garage',

  };
  Map<int, String> oracionDificil= {

    9 : 'We went to a new restaurant last weekend',
    8 : 'She is going to visit her parents a couple of weeks',
    7 : 'Someone is spying on us behind that tree',
    6 : 'My friend and I bought clothes at the department store',
    5 : 'Don’t say you don´t like something before you taste it',
    4 : 'There was a robbery in the bank last week',
    3 : 'She drew a very talented painting of a horse on the field',
    2 : 'The boxer beat his opponent in the second round',
    1 : 'If you want to know the truth, you must investigate more',
    0 : 'The discovery was made last century',

  };
  Map facil() {
    String palabra = oracionFacil[r.nextInt(10)];
    palabraElegida(palabra);
    final Map<String, HighlightedWord> _highlights = {

      palabra: HighlightedWord(
        textStyle: const TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    };
    var palabras= palabra.split(" ");
    for(int i = 0; i < palabras.length; i++){
      _highlights.putIfAbsent(palabras[i], () => HighlightedWord(
        textStyle: const TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ));
    }
    return _highlights;
  }
  Map intermedio() {
    String palabra = oracionIntermedio[r.nextInt(10)];
    palabraElegida(palabra);
    final Map<String, HighlightedWord> _highlights = {

      palabra: HighlightedWord(
        textStyle: const TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    };
    var palabras= palabra.split(" ");
    for(int i = 0; i < palabras.length; i++){
      _highlights.putIfAbsent(palabras[i], () => HighlightedWord(
        textStyle: const TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ));
    }
    return _highlights;
  }
  Map dificil() {
    String palabra = oracionDificil[r.nextInt(10)];
    palabraElegida(palabra);
    final Map<String, HighlightedWord> _highlights = {

      palabra: HighlightedWord(
        textStyle: const TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    };
    var palabras= palabra.split(" ");
    for(int i = 0; i < palabras.length; i++){
      _highlights.putIfAbsent(palabras[i], () => HighlightedWord(
        textStyle: const TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ));
    }
    return _highlights;
  }
  void palabraElegida (String palabra) {

    this.oracion = palabra;
  }
}