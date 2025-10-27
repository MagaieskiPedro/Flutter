import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaApi extends StatefulWidget {
  const TelaApi({super.key});

  @override
  State<TelaApi> createState() => _TelaApiState();
}

class _TelaApiState extends State<TelaApi> {
  String? valor; //variavel que recebe dados da API

  @override
  void initState() {
    //funcao que reinicia o estado ao entrar na pagina
    super.initState();
    getValue();
  }

  void getValue() async {
    final response = await http.get(
      Uri.parse("https://swapi.dev/api/people/1"),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        valor = data["name"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: valor == null
            ? Center(child: CircularProgressIndicator())
            : Center(child: Text("$valor")),
      ),
    );
  }
}
