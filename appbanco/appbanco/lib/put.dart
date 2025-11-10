import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  Map<String, TextEditingController> controllers = {};
  List<dynamic>? values;

  @override
  void initState() {
    // inicia a si mesma
    super.initState();
    getValues();
  }

  void getValues() {
    FirebaseFirestore.instance.collection("monitoramento").snapshots().listen((
      snapshots,
    ) {
      final data = snapshots.docs; //variavel que pega os documentos do db

      setState(() {
        values = data;

        for (dynamic doc in data) {
          controllers[doc.id] = TextEditingController();
        }
      });
    });
  }

  Future<void> putValue(String id) async {
    FirebaseFirestore.instance.collection("monitoramento").doc(id).set(
      {"temperatura": controllers[id]!.text},
      SetOptions(merge: true),
    ); //se não houver dado, ele cria a coluna e o dado (banco de dados não relacional pode não ter essa coluna)
  }

  @override
  void dispose() {
    // função para limpar Textfield
    for (dynamic value in controllers.values) {
      // para cada valor do campo
      value.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("PUT")),
        body: values == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: values!
                    .length, // quantidade de itens construidos. sera o tamanho de valores
                itemBuilder: (context, index) {
                  // o que vou construir
                  final item =
                      values![index]; // cada item(documento do banco de dados) de valores é representado por item
                  return ListTile(
                    title: Text("Temperatura atual: ${item["temperatura"]}"),
                    subtitle: Column(
                      children: [
                        TextField(
                          controller: controllers[item.id],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            putValue(item.id);
                          },
                          child: Text("Alterar dado"),
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
