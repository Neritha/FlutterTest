//import 'dart:html';
//import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:les_tests_et_exercices/pages/cat.dart';

class PageCinq extends StatefulWidget {
  const PageCinq({super.key});

  @override
  State<PageCinq> createState() => _PageCinqState();
}

class _PageCinqState extends State<PageCinq> {

 Future<Cat> _fetchData() async{ 
    final response =  await http.get(Uri.parse("https://api.thecatapi.com/v1/images/search"));
    if (response.statusCode == 200){
      return Cat.fromJson(jsonDecode(response.body)); //as Map<String, dynamic>);

      //return Cat.fromJson(jsonDecode(response.body));
      //return jsonDecode(response.body);
    } else {
      throw Exception("erreur de chargement des données");
    }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test avec des images de chats (enfin on espère)")),
      body: Center(
        child: 
          //const Text("bienvenu sur ma page de test asyncrone future et compagnie"),

          FutureBuilder<Cat>(
            builder: (context, snapshot){
              if(snapshot.hasData){

                return Text(snapshot.requireData.id);//return Text(snapshot.data!.id);
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