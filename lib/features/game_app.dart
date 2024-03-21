import 'package:catch_words/features/catch_words.dart';
import 'package:catch_words/utils/config.dart';
import 'package:catch_words/widgets/overlay_screen.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final CatchWords game;

  @override
  void initState() {
    super.initState();
    game = CatchWords();
  }

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
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: FittedBox(
                      child: SizedBox(
                        width: gameWidth,
                        height: gameHeight,
                        child: GameWidget(
                          game: game,
                          overlayBuilderMap: {
                            PlayState.welcome.name: (context, game) =>
                                const OverlayScreen(
                                    title: "Tap to play",
                                    subtitle: "Enjoy the game"),
                            PlayState.gameOver.name: (context, game) =>
                                const OverlayScreen(
                                  title: "Game Over",
                                  subtitle: "Try again!",
                                ),
                            PlayState.won.name: (context, game) =>
                                const OverlayScreen(
                                    title: "You won!",
                                    subtitle: "Кангратулейшнс!")
                          },
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
