import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  int num = 0;

  void aumentar() {
    setState(() {
      this.num += 5;
    });
  }

  void diminuir() {
    setState(() {
      this.num -= 5;
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
        backgroundColor: Colors.orange,
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      textStyle: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      aumentar();
                    },
                    child: Text("Aumentar"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      textStyle: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      diminuir();
                    },
                    child: Text("Diminuir"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      textStyle: TextStyle(color: Colors.black),
                    ),
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
