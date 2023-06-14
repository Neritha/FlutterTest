import 'package:flutter/material.dart';
import 'package:les_tests_et_exercices/pages/pageDeux.dart';
import 'package:les_tests_et_exercices/pages/pageTrois.dart';
import 'package:les_tests_et_exercices/pages/pageUn.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Accueil")),
      body: Center(
        child: Column(
        children: [ // faire une liste d'objet boutton ?
          
          ListView(
            shrinkWrap: true,
            children: [
              //const Text("H"),
              //const Text("E"),
              //const Text("Y"),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(pageBuilder:(_, __, ___) => const PageUn()
                    )
                  );
                } , 
                child: const Text("test sur les listes déroulantes")
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(pageBuilder:(_, __, ___) => const PageDeux()
                    )
                  );
                } , 
                child: const Text("test sur les API",)
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(pageBuilder:(_, __, ___) => const PageTrois()
                    )
                  );
                } , 
                child: const Text("test async",)
              ),

            ],
          ),


        ],
      ),
      ) 
    );
  }
}