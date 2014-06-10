library text_interpolate;

import 'dart:math' show Random;

final Random _random = new Random();

String interpolate(String from, String to, num progress) {
  if (progress <= 0) return from;
  if (progress >= 1) return to;
  
  List<int> fromRunes = from.runes.toList(growable: false);
  int fromLength = fromRunes.length;
  List<int> toRunes = to.runes.toList(growable: false);
  int toLength = toRunes.length;
  
  int length = fromLength + ((toLength - fromLength) * progress).toInt();
  
  StringBuffer buffer = new StringBuffer();
  for (int i = 0; i < length; i++) {
    int char;
    if (_random.nextDouble() > progress) {
      char = fromRunes[(i / length * fromLength).floor()];
    } else {
      char = toRunes[(i / length * toLength).floor()];
    }
    buffer.writeCharCode(char);
  }
  
  return buffer.toString();
}