import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.pressStart2pTextTheme().apply(
          bodyColor: const Color(0xff184e77),
          displayColor: const Color(0xff184e77),
        ),
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFFA9D6E5),
                Color(0xFFF2E8CF),
              ])),
          child: const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Column(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
