import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apiall extends StatefulWidget {
  const Apiall({super.key});

  @override
  State<Apiall> createState() => _ApiallState();
}

class _ApiallState extends State<Apiall> {
  List<dynamic>? valor;

  @override
  void initState() {
    //funcao que reinicia o estado ao entrar na pagina
    super.initState();
    getValue();
  }

  void getValue() async {
    final response = await http.get(Uri.parse("https://swapi.dev/api/people/"));
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
            : Center(
                child: ListView.builder(
                  itemCount: valor!.length,
                  itemBuilder: (context, index) {
                    final item = valor![index];
                    return Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      child: Text("${item["name"]}"),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
