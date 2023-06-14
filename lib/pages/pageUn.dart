import 'package:flutter/material.dart';

class PageUn extends StatefulWidget {
  const PageUn({super.key});

  @override
  State<PageUn> createState() => _PageUnState();
}


class _PageUnState extends State<PageUn> {

  var _paysChoisie = "";
  var _planetChoisie = "";
  var _nomChoisie = "";

  _dropPays(String? selectedValue) {
    if (selectedValue is String){
      setState(() {
        _paysChoisie = selectedValue;
      });
    }
  }

  _dropPlanet(String? selectedValue) {
    if (selectedValue is String){
      setState(() {
        _planetChoisie = selectedValue;
      });
    }
  }

    _dropNam(String? selectedValue) {
    if (selectedValue is String){
      setState(() {
        _nomChoisie = selectedValue;
      });
    }
  }

  List<DropdownMenuItem<String>> listPlanet = const [
    DropdownMenuItem(value: "mercury", child: Text("Mercury")),
    DropdownMenuItem(value: "venus", child: Text("Venus")),
    DropdownMenuItem(value: "earth", child: Text("Earth")),
  ];

  List<DropdownMenuItem<String>> listNam = [
    DropdownMenuItem(value: "Bob", child: Text("Bob")),
    DropdownMenuItem(value: "Arkin", child: Text("Arkin")),
    DropdownMenuItem(value: "Jeanine", child: Text("Jeanine")),
  ];

  _confirme($value){
    setState(() {
      setState(() {
        listNam.add(DropdownMenuItem(value: $value, child: Text($value)));
      });
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test sur les listes déroulantes")),
      body: Column(
        children: [

          Text("le pays choisie est $_paysChoisie"),
          DropdownButton(
            items:const [
              DropdownMenuItem(value: "USA", child: Text("USA")),
              DropdownMenuItem(value: "Canada", child: Text("Canada")),
              DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
              DropdownMenuItem(value: "England", child: Text("England")),
            ] , 
            onChanged: _dropPays,
            ),

          Text("la planète choisie est $_planetChoisie"),
          DropdownButton(
            items: listPlanet, 
            onChanged: _dropPlanet,
          ),

          Text("le nom choisie est $_nomChoisie"),
            DropdownButton(
            items: listNam, 
            onChanged: _dropNam,
          ),
          // le but est de créé une entrer pour ajouter un nom
          const Text("Ajouter un nom à la liste"),
          TextField(
            onSubmitted:_confirme ,
          )

        ],
      )
    );
  }
}