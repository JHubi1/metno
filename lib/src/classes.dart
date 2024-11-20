import 'dart:convert';

extension Title on String {
  String toTitleCase() {
    var words = split(" ");
    for (var i in words) {
      words[words.indexOf(i)] = i[0].toUpperCase() + i.substring(1);
    }
    return words.join(" ");
  }
}

extension IntConverter on num {
  num toIntIfFull() {
    return (this % 1 == 0) ? toInt() : this;
  }
}

/// A class representing the weather data' units.
class WeatherUnits {
  final String airPressureAtSeaLevel;
  final String airTemperature;
  final String airTemperatureMax;
  final String airTemperatureMin;
  final String cloudAreaFraction;
  final String cloudAreaFractionHigh;
  final String cloudAreaFractionLow;
  final String cloudAreaFractionMedium;
  final String dewPointTemperature;
  final String fogAreaFraction;
  final String precipitationAmount;
  final String relativeHumidity;
  final String ultravioletIndexClearSky;
  final String windFromDirection;
  final String windSpeed;

  WeatherUnits({
    required this.airPressureAtSeaLevel,
    required this.airTemperature,
    required this.airTemperatureMax,
    required this.airTemperatureMin,
    required this.cloudAreaFraction,
    required this.cloudAreaFractionHigh,
    required this.cloudAreaFractionLow,
    required this.cloudAreaFractionMedium,
    required this.dewPointTemperature,
    required this.fogAreaFraction,
    required this.precipitationAmount,
    required this.relativeHumidity,
    required this.ultravioletIndexClearSky,
    required this.windFromDirection,
    required this.windSpeed,
  });

  /// Creates a new [WeatherUnits] object from a map.
  WeatherUnits.fromMap(Map content)
      : airPressureAtSeaLevel = content["air_pressure_at_sea_level"],
        airTemperature = content["air_temperature"],
        airTemperatureMax = content["air_temperature_max"],
        airTemperatureMin = content["air_temperature_min"],
        cloudAreaFraction = content["cloud_area_fraction"],
        cloudAreaFractionHigh = content["cloud_area_fraction_high"],
        cloudAreaFractionLow = content["cloud_area_fraction_low"],
        cloudAreaFractionMedium = content["cloud_area_fraction_medium"],
        dewPointTemperature = content["dew_point_temperature"],
        fogAreaFraction = content["fog_area_fraction"],
        precipitationAmount = content["precipitation_amount"],
        relativeHumidity = content["relative_humidity"],
        ultravioletIndexClearSky = content["ultraviolet_index_clear_sky"],
        windFromDirection = content["wind_from_direction"],
        windSpeed = content["wind_speed"];

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "air_pressure_at_sea_level": airPressureAtSeaLevel,
      "air_temperature": airTemperature,
      "air_temperature_max": airTemperatureMax,
      "air_temperature_min": airTemperatureMin,
      "cloud_area_fraction": cloudAreaFraction,
      "cloud_area_fraction_high": cloudAreaFractionHigh,
      "cloud_area_fraction_low": cloudAreaFractionLow,
      "cloud_area_fraction_medium": cloudAreaFractionMedium,
      "dew_point_temperature": dewPointTemperature,
      "fog_area_fraction": fogAreaFraction,
      "precipitation_amount": precipitationAmount,
      "relative_humidity": relativeHumidity,
      "ultraviolet_index_clear_sky": ultravioletIndexClearSky,
      "wind_from_direction": windFromDirection,
      "wind_speed": windSpeed,
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherUnits && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather data' value details.
class WeatherDataValueDetails {
  final num? airPressureAtSeaLevel;
  final num? airTemperature;
  final num? airTemperatureMax;
  final num? airTemperatureMin;
  final num? cloudAreaFraction;
  final num? cloudAreaFractionHigh;
  final num? cloudAreaFractionLow;
  final num? cloudAreaFractionMedium;
  final num? dewPointTemperature;
  final num? fogAreaFraction;
  final num? precipitationAmount;
  final num? relativeHumidity;
  final num? ultravioletIndexClearSky;
  final num? windFromDirection;
  final num? windSpeed;

  WeatherDataValueDetails({
    this.airPressureAtSeaLevel,
    this.airTemperature,
    this.airTemperatureMax,
    this.airTemperatureMin,
    this.cloudAreaFraction,
    this.cloudAreaFractionHigh,
    this.cloudAreaFractionLow,
    this.cloudAreaFractionMedium,
    this.dewPointTemperature,
    this.fogAreaFraction,
    this.precipitationAmount,
    this.relativeHumidity,
    this.ultravioletIndexClearSky,
    this.windFromDirection,
    this.windSpeed,
  });

  /// Creates a new [WeatherDataValueDetails] object from a map.
  WeatherDataValueDetails.fromMap(Map content)
      : airPressureAtSeaLevel = content["air_pressure_at_sea_level"],
        airTemperature = content["air_temperature"],
        airTemperatureMax = content["air_temperature_max"],
        airTemperatureMin = content["air_temperature_min"],
        cloudAreaFraction = content["cloud_area_fraction"],
        cloudAreaFractionHigh = content["cloud_area_fraction_high"],
        cloudAreaFractionLow = content["cloud_area_fraction_low"],
        cloudAreaFractionMedium = content["cloud_area_fraction_medium"],
        dewPointTemperature = content["dew_point_temperature"],
        fogAreaFraction = content["fog_area_fraction"],
        precipitationAmount = content["precipitation_amount"],
        relativeHumidity = content["relative_humidity"],
        ultravioletIndexClearSky = content["ultraviolet_index_clear_sky"],
        windFromDirection = content["wind_from_direction"],
        windSpeed = content["wind_speed"];

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "air_pressure_at_sea_level": airPressureAtSeaLevel?.toIntIfFull(),
      "air_temperature": airTemperature?.toIntIfFull(),
      "air_temperature_max": airTemperatureMax?.toIntIfFull(),
      "air_temperature_min": airTemperatureMin?.toIntIfFull(),
      "cloud_area_fraction": cloudAreaFraction?.toIntIfFull(),
      "cloud_area_fraction_high": cloudAreaFractionHigh?.toIntIfFull(),
      "cloud_area_fraction_low": cloudAreaFractionLow?.toIntIfFull(),
      "cloud_area_fraction_medium": cloudAreaFractionMedium?.toIntIfFull(),
      "dew_point_temperature": dewPointTemperature?.toIntIfFull(),
      "fog_area_fraction": fogAreaFraction?.toIntIfFull(),
      "precipitation_amount": precipitationAmount?.toIntIfFull(),
      "relative_humidity": relativeHumidity?.toIntIfFull(),
      "ultraviolet_index_clear_sky": ultravioletIndexClearSky?.toIntIfFull(),
      "wind_from_direction": windFromDirection?.toIntIfFull(),
      "wind_speed": windSpeed?.toIntIfFull(),
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDataValueDetails && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather data' value summary.
class WeatherDataValueSummary {
  final String symbolCode;
  WeatherDataValueSummary({required this.symbolCode});

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {"symbol_code": symbolCode};
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDataValueSummary && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather data's current value.
class WeatherDataNowValue {
  final WeatherDataValueDetails details;
  WeatherDataNowValue({required this.details});

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {"details": details.toMap()};
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDataNowValue && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather data' value.
class WeatherDataValue {
  /// A summary of the weather data as a key.
  final WeatherDataValueSummary summary;

  final WeatherDataValueDetails details;
  WeatherDataValue({required this.summary, required this.details});

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {"summary": summary.toMap(), "details": details.toMap()};
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDataValue && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather data.
class WeatherData {
  /// Current value data.
  final WeatherDataNowValue instant;

  final WeatherDataValue? next12Hours;
  final WeatherDataValue? next1Hours;
  final WeatherDataValue? next6Hours;

  WeatherData({
    required this.instant,
    this.next12Hours,
    this.next1Hours,
    this.next6Hours,
  });

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "instant": instant.toMap(),
      "next_12_hours": next12Hours?.toMap(),
      "next_1_hours": next1Hours?.toMap(),
      "next_6_hours": next6Hours?.toMap(),
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherData && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing of a single weather slot.
class WeatherSlot {
  final DateTime time;
  final WeatherData data;

  WeatherSlot({required this.time, required this.data});

  /// Creates a new [WeatherSlot] object from a map.
  WeatherSlot.fromMap(Map content)
      : time = DateTime.parse(content["time"]),
        data = WeatherData(
          instant: WeatherDataNowValue(
            details: WeatherDataValueDetails.fromMap(
              content["data"]["instant"]["details"],
            ),
          ),
          next12Hours: (content["data"]["next_12_hours"] == null)
              ? null
              : WeatherDataValue(
                  details: WeatherDataValueDetails.fromMap(
                    content["data"]["next_12_hours"]["details"],
                  ),
                  summary: WeatherDataValueSummary(
                    symbolCode: content["data"]["next_12_hours"]["summary"]
                        ["symbol_code"],
                  ),
                ),
          next1Hours: (content["data"]["next_1_hours"] == null)
              ? null
              : WeatherDataValue(
                  details: WeatherDataValueDetails.fromMap(
                    content["data"]["next_1_hours"]["details"],
                  ),
                  summary: WeatherDataValueSummary(
                    symbolCode: content["data"]["next_1_hours"]["summary"]
                        ["symbol_code"],
                  ),
                ),
          next6Hours: (content["data"]["next_6_hours"] == null)
              ? null
              : WeatherDataValue(
                  details: WeatherDataValueDetails.fromMap(
                    content["data"]["next_6_hours"]["details"],
                  ),
                  summary: WeatherDataValueSummary(
                    symbolCode: content["data"]["next_6_hours"]["summary"]
                        ["symbol_code"],
                  ),
                ),
        );

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "time": time.toIso8601String().replaceAll(".000", ""),
      "data": {
        "instant": {
          "details": data.instant.details.toMap(),
        },
        "next_12_hours": data.next12Hours?.toMap(),
        "next_1_hours": data.next1Hours?.toMap(),
        "next_6_hours": data.next6Hours?.toMap()
      }..removeWhere((_, v) => v == null)
    };
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherSlot && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather's metadata.
class WeatherMeta {
  /// The time when the weather data was last updated.
  final DateTime updatedAt;

  /// The units of the weather data.
  final WeatherUnits units;

  WeatherMeta({required this.updatedAt, required this.units});

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "updated_at": updatedAt.toIso8601String().replaceAll(".000", ""),
      "units": units.toMap(),
    };
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherMeta && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// A class representing the weather's properties.
class WeatherProperties {
  final WeatherMeta meta;
  final List<WeatherSlot> timeseries;
  WeatherProperties({required this.meta, required this.timeseries});

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "meta": meta.toMap(),
      "timeseries": timeseries.map((e) => e.toMap()).toList()
    };
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherProperties && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// The available geometry types.
enum WeatherGeometryType { point }

/// A class representing the weather's geometry.
class WeatherGeometry {
  final WeatherGeometryType type;
  final List<num> coordinates;
  WeatherGeometry({required this.type, required this.coordinates});

  /// Creates a new map representation of this object.
  Map<String, dynamic> toMap() {
    return {
      "type": type.toString().split(".").last.toTitleCase(),
      "coordinates": coordinates,
    };
  }

  /// Creates a new string representation of this object.
  @override
  String toString() {
    return jsonEncode(toMap());
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherGeometry && other.toString() == toString();
  }

  @override
  int get hashCode => toMap().hashCode;
}

/// The available weather types.
enum WeatherType { feature }
