import 'package:flutter/material.dart';

class PageTrois extends StatefulWidget {
  const PageTrois({super.key});

  @override
  State<PageTrois> createState() => _PageTroisState();
}

class _PageTroisState extends State<PageTrois> {

  String _donneesTrouvees = "";
  bool _enChargement = false;

  _buttonClicked() async{
    setState(() {
      _enChargement = true;
    });
    final donneesChargees = await _foncChargement(); // création d'une variable contenant les données charger mais qui doit attendre le résultat de la fonction qui les lui donnes
  setState(() { // à la fin de la demande de chargement
    _enChargement = false;
    _donneesTrouvees = donneesChargees;
  });
  }

  // création de la fonction de chargement qui attend trois secondes avant de donné les datas à la variable (comme une sorte de transfer)
  Future<String> _foncChargement () async{ // vu qu'elle fait partie d'un truc asyncrone on dit future car c'est elle qu'on attend
    return Future.delayed(const Duration(seconds: 3), () => "Bonjour c'est moi la fameuse data :)");
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test de codes asyncrones")),
      body: Column(
        children: [
          const Text("bienvenu sur ma page de test asyncrone future et compagnie"),

          FilledButton(onPressed: _buttonClicked, child: const Text("lancer le chargement")),
          if (_donneesTrouvees != "") Text(_donneesTrouvees), // si des datas ont été trouvé alors on les affiches
          if (_enChargement) const CircularProgressIndicator(), // créé le cercle de charchement si en chargement des données
        ],
      )
    );
  }
}