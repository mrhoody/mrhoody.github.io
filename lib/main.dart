import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hud Syafiq Herman',
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Hud's Portfolio Website",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.pink[900],
            ),
            body: Column(children: [
              Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.amber[100],
                    child: const Center(
                        child: Column(
                      children: [
                        Text("Hud Syafiq Herman"),
                        Text("Aspiring Full-Stack Developer"),
                        SocialMediaIcons()
                      ],
                    )),
                  ),
                ),
                const Expanded(
                    child: Image(
                  image: AssetImage("assets/hudhtx.jpg"),
                ))
              ])
            ])));
  }
}
