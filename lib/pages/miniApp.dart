/*import 'package:flutter/material.dart';

class MiniApp extends StatefulWidget {
  const MiniApp({super.key});

  @override
  State<MiniApp> createState() => _MiniAppState();
}

class _MiniAppState extends State<MiniApp> {
// var et fonc ici
  @override
  Widget build(BuildContext context) {
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("et hop une app de test ya"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Image.asset("../assets/images/frog.png"),
              const Text(
                "Asynconf 2022",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
                ),
              ),
              const Text(
                "Salon virtuelle de l'informatique du 27 au 29 octobre 2022",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign:TextAlign.center ,
              ),
            ],
          ) 
        ),
      ),
    );
  }
}*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MiniApp());
}

class MiniApp extends StatelessWidget {
  const MiniApp({super.key}); // constructeur

  @override
  Widget build(BuildContext context) { //methode builde qui permet d'assembler les éléments qu'on va mettre à l'interrieur
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("et hop une app de test"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              //Image.asset("assets/images/frog.png"),
              Text(
                "Asynconf 2022",
                /*style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
                ),*/
              ),
              Text(
                "Salon virtuelle de l'informatique du 27 au 29 octobre 2022",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign:TextAlign.center ,
              ),
            ],
          ) 
        ),
      ),
    );
  }
}

*/
/*
import 'package:flutter/material.dart';

class MiniApp extends StatefulWidget {
  const MiniApp({super.key});

  @override
  State<MiniApp> createState() => _MiniAppState();
}

class _MiniAppState extends State<MiniApp> {
  // var et fonc ici
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("et hop une app de test"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              //Image.asset("assets/images/frog.png"),
              Text(
                "Asynconf 2022",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
                ),
              ),
              Text(
                "Salon virtuelle de l'informatique du 27 au 29 octobre 2022",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign:TextAlign.center ,
              ),
            ],
          ) 
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MiniApp());
}

class MiniApp extends StatelessWidget {
  const MiniApp({super.key}); // constructeur

  @override
  Widget build(BuildContext context) { //methode builde qui permet d'assembler les éléments qu'on va mettre à l'interrieur
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("et hop une app de test ya"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Image.asset("assets/images/frog.png"),
              const Text(
                "Asynconf 2022",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
                ),
              ),
              const Text(
                "Salon virtuelle de l'informatique du 27 au 29 octobre 2022",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign:TextAlign.center ,
              ),
            ],
          ) 
        ),
      ),
    );
  }
}