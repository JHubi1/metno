import 'package:metno/metno.dart';

void main() async {
  /// London
  var weather = await Weather.fetch(
      latitude: 51.5, longitude: -0.1, altitude: 11, userAgent: "demo");

  print(weather.properties.meta.updatedAt);
  // > 2024-11-20 11:16:50.000Z

  print("-" * 50);

  }
