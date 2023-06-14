import 'package:flutter/material.dart';
import 'package:les_tests_et_exercices/pages/home.dart';
//import 'package:les_tests_et_exercices/pages/home.dart';
//import 'package:les_tests_et_exercices/pages/pageDeux.dart';
//import 'package:les_tests_et_exercices/pages/pageUn.dart';

//import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // constructeur

  @override
  Widget build(BuildContext context) { //methode builde qui permet d'assembler les éléments qu'on va mettre à l'interrieur
    return const MaterialApp(
      home: Home(),
    );
  }
}
