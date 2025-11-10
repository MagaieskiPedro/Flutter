import 'package:appbanco/delete.dart';
import 'package:appbanco/post.dart';
import 'package:appbanco/put.dart';
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

//Navegação
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0; // variavel que indica a posicao da tela desejada

  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  List<Widget> screens = [TelaGet(), PostPage(), PutPage(), DeletePage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Get"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Put"),
            BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Delete"),
          ],
          currentIndex: currentIndex,
          onTap: changeIndex,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}

//home
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NavBar());
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
            children: [Text("Esta é a sua temperatura"), Text("$temperatura")],
          ),
        ),
      ),
    );
  }
}
