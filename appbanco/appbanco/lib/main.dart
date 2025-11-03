import 'package:appbanco/post.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  //Espera puxar do firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform, //plataforma android das configurações
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaGet());
  }
}

class TelaGet extends StatefulWidget {
  const TelaGet({super.key});

  @override
  State<TelaGet> createState() => _TelaGetState();
}

class _TelaGetState extends State<TelaGet> {
  //Codar chamada http da tela
  String? temperatura;

  @override
  void initState() {
    //Reseta a busca ao entrar na pagina
    super.initState();
    getValue(); // initState reinicia o estado da função getValue
  }

  void getValue() {
    FirebaseFirestore.instance.collection("monitoramento").snapshots().listen((
      snapshots,
    ) {
      final data = snapshots.docs.first.data();

      setState(() {
        temperatura = data["temperatura"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela GET firebase")),
        body: Center(
          child: Column(
            children: [
              Text("Esta é a sua temperatura"),
              Text("$temperatura"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostPage()),
                  );
                },
                child: Text("IR PAGINA POST"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
