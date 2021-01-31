import 'package:bonfire/bonfire.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'game.dart';
import 'sprite_sheet_orc.dart';
import 'sprite_sheet_player.dart';

double tileSize = 20.0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.util.fullScreen();
    await Flame.util.setLandscape();
  }
  await SpriteSheetPlayer.load();
  await SpriteSheetOrc.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TINGUE',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Game(),
    );
  }
}
