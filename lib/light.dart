import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class Light extends GameDecoration with Lighting {
  Light(
    Position position,
    double width,
    double height,
  ) : super(
          initPosition: position,
          width: width,
          height: height,
        ) {
    lightingConfig = LightingConfig(
      radius: width * 2,
      blurBorder: width * 1.5,
      color: Colors.red.withOpacity(0.4),
      withPulse: true,
    );
  }
}
