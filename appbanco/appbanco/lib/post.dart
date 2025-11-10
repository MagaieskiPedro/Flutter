import 'package:appbanco/delete.dart';
import 'package:appbanco/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  //aqui é a logica
  TextEditingController novatemperatura = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  String? erro;

  Future<void> postValue() async {
    try {
      FirebaseFirestore.instance.collection("monitoramento").add({
        // Tipo um JSON
        "temperatura": novatemperatura.text,
      });
    } catch (err) {
      setState(() {
        //se der erro, o valor de erro altera
        erro = "Erro ao enviar temperatura";
      });
    }
    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("PostPage")),
        body: Center(
          child: Column(
            children: [
              Text("Insira a sua temperatura"),
              TextField(controller: novatemperatura),
              ElevatedButton(onPressed: postValue, child: Text("Enviar")),
            ],
          ),
        ),
      ),
    );
  }
}
