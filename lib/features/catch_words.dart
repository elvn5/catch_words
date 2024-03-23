import 'dart:async';

import 'package:catch_words/components/play_area.dart';
import 'package:catch_words/components/word.dart';
import 'package:catch_words/utils/config.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

enum PlayState { welcome, playing, gameOver, won }

class CatchWords extends FlameGame with TapDetector, HasCollisionDetection {
  CatchWords()
      : super(
          camera: CameraComponent.withFixedResolution(
              width: gameWidth, height: gameHeight),
        );

  double get width => size.x;
  double get height => size.y;

  late PlayState _playState;
  PlayState get playState => _playState;

  set playState(PlayState playState) {
    _playState = playState;
    switch (playState) {
      case PlayState.welcome:
      case PlayState.gameOver:
      case PlayState.won:
        overlays.add(playState.name);
      case PlayState.playing:
        overlays.remove(PlayState.welcome.name);
        overlays.remove(PlayState.gameOver.name);
        overlays.remove(PlayState.won.name);
    }
  }

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(PlayArea());

    playState = PlayState.welcome;
  }

  void startGame() {
    if (playState == PlayState.playing) return;

    world.removeAll(world.children.query<Word>());

    playState = PlayState.playing;

    world.add(Word());
  }

  @override
  void onTap() {
    super.onTap();
    startGame();
  }
}
