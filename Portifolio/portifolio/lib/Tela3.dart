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
      if (this.num + 5 <= 100) {
        this.num += 5;
      }
    });
  }

  void diminuir() {
    setState(() {
      if (this.num - 5 >= 0) {
        this.num -= 5;
      }
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
              Text(num.toStringAsFixed(2), style: TextStyle(fontSize: 80)),
              Slider(
                inactiveColor: Colors.deepOrange,
                activeColor: Colors.deepPurple,
                min: 0,
                max: 100,
                divisions: 20,
                value: num.toDouble(),
                onChanged: (double newValue) {
                  setState(() {
                    num = newValue.round();
                  });
                },
              ),
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
                      disabledBackgroundColor: Colors.deepPurpleAccent,
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
