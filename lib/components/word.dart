import 'dart:ui';

import 'package:catch_words/features/catch_words.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

final style = const TextStyle(
  color: Colors.black,
  fontSize: 50.0, // Change the font size here
);
final regular = TextPaint(style: style);

class Word extends TextComponent
    with HasGameReference<CatchWords>, TapCallbacks {
  Word()
      : super(text: "Hello", position: Vector2(10, 10), textRenderer: regular);

  @override
  void onTapUp(TapUpEvent tapUpEvent) {
    print(tapUpEvent);
  }

  @override
  void onTapDown(TapDownEvent tapDownEvent) {
    print(tapDownEvent);
  }
}
