import "package:text_interpolate/text_interpolate.dart";

void main() {
  var from = "Hello, World!";
  var to = "Skákal pes přes oves.";
  final int steps = 10;
  for (int i = 0; i <= steps; i++) {
    print(interpolate(from, to, i / steps));
  }
}
