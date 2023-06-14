import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class PageDeux extends StatefulWidget {
  const PageDeux({super.key});

  @override
  State<PageDeux> createState() => _PageDeuxState();
}


class _PageDeuxState extends State<PageDeux> {

  Url? _donneesTrouvees;
  bool _enChargement = false;

  _buttonClicked() async{
    setState(() {
      _enChargement = true;
    });
    final donneesChargees = await _foncChargement(); 
  setState(() { // à la fin de la demande de chargement
    _enChargement = false;
    _donneesTrouvees = donneesChargees as Url;
  });
  }

  // création de la fonction de chargement qui attend trois secondes avant de donné les datas à la variable (comme une sorte de transfer)
  /*Future<String> _foncChargement () async{ // vu qu'elle fait partie d'un truc asyncrone on dit future car c'est elle qu'on attend
    return Future.delayed(const Duration(seconds: 3), () => "Bonjour c'est moi la fameuse data :)");
  }*/

  Future<Future<http.Response>> _foncChargement() async{
    return http.get(Uri.parse('https://api.thecatapi.com/v1/images/search'));
    //return Future.delayed(const Duration(seconds: 3), () => http.get("https://api.thecatapi.com/v1/images/search"));
    //return Future(() => final http.get("https://api.thecatapi.com/v1/images/search"))
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test sur les API")),
      body: Column(
        children: [
          const Text("bienvenu sur ma page de test des API avec l'api des chats AAAAAAAAAA"),
          
          FilledButton(onPressed: _buttonClicked, child: const Text("clickez ici pour obtenir l'url d'une image de chat ")),
          // ignore: unrelated_type_equality_checks
          if (_donneesTrouvees != "") Text(_donneesTrouvees as String), // datas  trouvé alors affiches
          if (_enChargement) const CircularProgressIndicator(), // cercle de charchement
        
        ],
      )
    );
  }
}