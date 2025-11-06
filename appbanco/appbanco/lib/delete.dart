import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  List<dynamic>? valores;

  @override
  void initState() {
    super.initState();
    getValues();
  }

  // Funcao que lista
  void getValues() {
    FirebaseFirestore.instance.collection("monitoramento").snapshots().listen((
      snapshots,
    ) {
      final data = snapshots.docs;
      setState(() {
        valores = data;
      });
    });
  }

  //Funcao que deleta por id
  Future<void> deleteValue(String id) async {
    await FirebaseFirestore.instance
        .collection("monitoramento")
        .doc(id)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela Delete")),
        body: valores == null
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                  itemCount: valores!.length, //quantos itens?
                  itemBuilder: (context, index) {
                    final item = valores![index];
                    return ListTile(
                      title: Text("Temperatura do banco : "),
                      subtitle: Text("${item["temperatura"]}"),
                      trailing: GestureDetector(
                        onTap: () {
                          deleteValue(item.id);
                        },
                        child: Icon(Icons.delete),
                      ),
                    );
                  }, // o que vou criar
                ),
              ),
      ),
    );
  }
}
