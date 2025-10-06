import 'package:flutter/material.dart';
import 'package:portifolio/Tela1.dart';
import 'package:portifolio/Tela2.dart';
import 'package:portifolio/Tela3.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwipePageView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SwipePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flourescent, // O ícone do Material Design
              size: 40.0, // Define o tamanho do ícone
              color: Colors.amberAccent, // Define a cor do ícone
            ),
            Text(
              "Bem vindo",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.flourescent, // O ícone do Material Design
              size: 40.0, // Define o tamanho do ícone
              color: Colors.amberAccent, // Define a cor do ícone
            ),
          ],
        ),

        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        toolbarHeight: 200,
      ),
      body: PageView(children: <Widget>[Tela1(), Tela2(), Tela3()]),
    );
  }
}
