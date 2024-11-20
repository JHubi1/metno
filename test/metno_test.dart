import 'package:metno/metno.dart';
import 'package:test/test.dart';

void main() {
  group("Weather", () {
    Weather? weather;

    setUp(() async {
      weather =
          await Weather.fetch(latitude: 51.5, longitude: -0.1, altitude: 11);
    });

    test("Coordinates check", () {
      // rotated for some reason
      expect(weather!.geometry.coordinates, [-0.1, 51.5, 11]);
    });

    test("Parse", () {
      expect(Weather.parse(weather!.toMap()).toMap(), weather!.toMap());
    });
  });
}
