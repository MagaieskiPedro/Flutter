import 'package:flutter/material.dart';
import 'package:navbar/tela1.dart';
import 'package:navbar/tela2.dart';
import 'package:navbar/tela3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NavBar());
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0; // variavel que indica a posicao da tela desejada

  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  List<Widget> screens = [Tela1(), Tela2(), Tela3()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Tela 1",
              icon: Icon(Icons.screen_rotation),
            ),
            BottomNavigationBarItem(
              label: "Tela 2",
              icon: Icon(Icons.screen_rotation),
            ),
            BottomNavigationBarItem(
              label: "Tela 3",
              icon: Icon(Icons.screen_rotation),
            ),
          ],
          currentIndex: currentIndex,
          onTap: changeIndex,
          
        ),
      ),
    );
  }
}
