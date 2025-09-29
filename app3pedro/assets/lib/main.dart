import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tela2.dart';

void main() {
  runApp(const Assets());
}

class Assets extends StatelessWidget {
  const Assets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaAssets());
  }
}

class TelaAssets extends StatelessWidget {
  const TelaAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.jacquard12TextTheme()),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela Assets"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 200,
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/e/ee/Lanius_nubicus.jpg",
                width: 150,
                height: 150,
              ),
              Text(
                "Essa é a sua fonte do projeto",
                style: TextStyle(fontFamily: "Jacquard12"),
              ),
              Text(
                "Esse é um exemplo com biblioteca",
                style: GoogleFonts.roboto(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela2()),
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
