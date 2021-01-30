import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyGame().widget);

class MyGame extends BaseGame {
  @override
  void render(Canvas canvas) {
    String text = "Score: 0";
    TextPainter textPainter =
        Flame.util.text(text, color: Colors.white, fontSize: 48.0);
    textPainter.paint(canvas, Offset(size.width / 5, size.height / 2));
    super.render(canvas);
  }

  @override
  void update(double t) {
    super.update(t);
  }
}
