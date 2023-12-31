//import 'dart:html';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class PageTrois extends StatefulWidget {
  const PageTrois({super.key});

  @override
  State<PageTrois> createState() => _PageTroisState();
}

class _PageTroisState extends State<PageTrois> {

 Future<String> _fetchData() async{ 
    final response =  await http.get(Uri.parse("https://api.thecatapi.com/v1/images/search"));
    if (response.statusCode == 200){
      return response.body;
    } else {
      throw Exception("erreur de chargement des données");
    }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test de codes asyncrones")),
      body: Center(
        child: 
          //const Text("bienvenu sur ma page de test asyncrone future et compagnie"),

          FutureBuilder(
            
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Text(snapshot.requireData);
              } else if (snapshot.hasError){
                return const Text("erreur de chargement");
              } else {
                return const CircularProgressIndicator();
              }
            },
            future: _fetchData(),
          ),
      )
    );
  }
}