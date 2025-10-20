import 'package:api/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variavel que observa valores digitados pelo usuario
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  String correctUser = "vini";
  String correctPass = "123";

  //variavel que verifica erros
  String message = "";

  void login() {
    if (user.text == correctUser && pass.text == correctPass) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaApi()),
      );
      setState(() {
        message = "";
      });
    } else {
      setState(() {
        message = "Existem credenciais incorretas";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Login Page", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),

                Icon(Icons.person, color: Colors.deepPurpleAccent, size: 60),

                SizedBox(height: 40),
                TextField(
                  controller:
                      user, // qual variavel que armazena o valor digitado
                  decoration: InputDecoration(
                    filled: true, // Must be true to enable fill color
                    fillColor: Colors.white,
                    hintText: "Digite seu usuário", // placeholder
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 10.0,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller:
                      pass, // qual variavel que armazena o valor digitado
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true, // Must be true to enable fill color
                    fillColor: Colors.white,
                    hintText: "Digite sua senha", // placeholder
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 10.0,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    login();
                  },
                  child: Text("Login"),
                ),
                Text("$message"), //mostra valor da mensagem caso errar
              ],
            ),
          ),
        ),
      ),
    );
  }
}
