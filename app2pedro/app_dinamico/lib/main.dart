import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int num = 0;

  void aumentar() {
    setState(() {
      this.num++;
    });
  }

  void diminuir() {
    setState(() {
      this.num--;
    });
  }

  void resetar() {
    setState(() {
      this.num = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App contador", style: TextStyle(color: Colors.white)),
          centerTitle: true, //Centraliza
          backgroundColor: Colors.blue, // cor de fundo azul
          toolbarHeight: 180, // altura da appbar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(num.toString(), style: TextStyle(fontSize: 80)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      aumentar();
                    },
                    child: Text("Aumentar"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      diminuir();
                    },
                    child: Text("Diminuir"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      resetar();
                    },
                    child: Text("Resetar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
