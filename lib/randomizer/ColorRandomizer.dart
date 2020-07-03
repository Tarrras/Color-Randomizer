import 'dart:math';

import 'package:flutter/material.dart';

// Creating random color using extension function

// extension RandomColor on Color {
//   Color generateRandomColor() => Color.fromARGB(_generateNumberForColor(), _generateNumberForColor(),
//       _generateNumberForColor(), _generateNumberForColor());
// }

int _generateNumberForColor() => Random().nextInt(257);

class RandomColor extends Color {
  RandomColor.randomFromARGB() : super.fromARGB(_generateNumberForColor(),_generateNumberForColor(),_generateNumberForColor(),_generateNumberForColor());
}
