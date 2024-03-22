import 'package:catch_words/features/catch_words.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

const style = TextStyle(
  color: Colors.black,
  fontSize: 50.0,
);
final regular = TextPaint(style: style);

class Word extends TextComponent
    with HasGameReference<CatchWords>, TapCallbacks {
  Word()
      : super(text: "Hello", position: Vector2(10, 10), textRenderer: regular);

  final Vector2 velocity = Vector2(0, 10);

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt*10;
  }

  @override
  void onTapDown(TapDownEvent tapDownEvent) {
    print(tapDownEvent);
  }
}
