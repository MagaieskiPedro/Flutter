import 'package:flutter/material.dart';

void main() {
  runApp(const TelaHome());
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela Home")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Color(0XFF00FF00),
                  child: Text("1"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color(0XFF00FF00),
                  child: Text("2"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Color(0XFF00FF00),
                  child: Text("3"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color(0XFF00FF00),
                  child: Text("3"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
