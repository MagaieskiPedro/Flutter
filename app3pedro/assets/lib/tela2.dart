import 'package:assets/main.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("exemplo da tela 2")),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/images/dog.jpg", width: 550, height: 350),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaAssets()),
                  );
                },
                child: Icon(Icons.play_arrow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
