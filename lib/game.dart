import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'background.dart';
import 'light.dart';
import 'main.dart';
import 'orc.dart';
import 'player.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      tileSize = max(constraints.maxHeight, constraints.maxWidth) / 40;
      return Material(
        color: Colors.transparent,
        child: BonfireTiledWidget(
          joystick: Joystick(
            keyboardEnable: true,
            directional: JoystickDirectional(
              color: Colors.indigo.withOpacity(0.2),
            ),
            actions: [
              JoystickAction(
                actionId: 1,
                sprite: Sprite('weapon_golden_sword.png'),
                spritePressed: Sprite('weapon_golden_sword.png'),
                color: Colors.indigo.withOpacity(0.2),
                margin: const EdgeInsets.all(65),
              )
            ],
          ),
          player: HumanPlayer(Position(4 * tileSize, 4 * tileSize)),
          map: TiledWorldMap('tile/map.json',
              forceTileSize: Size(tileSize, tileSize))
            ..registerObject(
              'light',
              (x, y, width, height) => Light(Position(x, y), width, height),
            )
            ..registerObject(
                'orc', (x, y, width, height) => Orc(Position(x, y))),
          lightingColorGame: Colors.black.withOpacity(0.7),
          progress: Center(
            child: Text(
              'Chargement...',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          background: Background(),
        ),
      );
    });
  }
}
