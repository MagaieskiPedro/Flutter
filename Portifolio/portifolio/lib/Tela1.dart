import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 700,
                child: Card(
                  color: Colors.orangeAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, color: Colors.deepPurple, size: 40),
                      Icon(Icons.star, color: Colors.purple, size: 40),
                      Icon(
                        Icons.star,
                        color: Colors.deepPurpleAccent,
                        size: 40,
                      ),
                      Icon(Icons.star, color: Colors.purpleAccent, size: 40),
                      Text(
                        "Perfil",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Icon(Icons.star, color: Colors.purpleAccent, size: 40),
                      Icon(
                        Icons.star,
                        color: Colors.deepPurpleAccent,
                        size: 40,
                      ),
                      Icon(Icons.star, color: Colors.purple, size: 40),
                      Icon(Icons.star, color: Colors.deepPurple, size: 40),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 700,
                child: Card(
                  color: Colors.orangeAccent,
                  shadowColor: Colors.indigoAccent,
                  elevation: 15,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite, // O ícone do Material Design
                            size: 40.0, // Define o tamanho do ícone
                            color: Colors.purpleAccent, // Define a cor do ícone
                          ),
                          Text(
                            "FrontEnd com Angular",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/angular.png",
                            width: 150,
                            height: 150,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 700,
                child: Card(
                  color: Colors.orangeAccent,
                  shadowColor: Colors.indigoAccent,
                  elevation: 15,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite, // O ícone do Material Design
                            size: 40.0, // Define o tamanho do ícone
                            color: Colors.indigo, // Define a cor do ícone
                          ),
                          Text(
                            "Mobile usando flutter",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/flutter.png",
                            width: 150,
                            height: 150,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 700,
                child: Card(
                  color: Colors.orangeAccent,
                  shadowColor: Colors.indigoAccent,
                  elevation: 15,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite, // O ícone do Material Design
                            size: 40.0, // Define o tamanho do ícone
                            color: Colors.limeAccent, // Define a cor do ícone
                          ),
                          Text(
                            "Backend com spring",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/spring.png",
                            width: 150,
                            height: 150,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
