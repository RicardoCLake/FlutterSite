import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double radius = 40;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text("Oi meu amor!",
              style: TextStyle(
                  color: Colors.pink[400],
                  fontStyle: FontStyle.normal,
                  fontSize: 50)),
          Container(
              foregroundDecoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              width: width / 1.5,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  child: Image.asset('photo.jpg'))),
        ],
      ),
    ));
  }
}

//MediaQuery.of(context).size.width / 2.5