import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("exemplo da tela 3")),
        body: Center(child: Column(children: [Text("só texto")])),
      ),
    );
  }
}
