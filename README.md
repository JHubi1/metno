# metno

[![Pub Version](https://img.shields.io/pub/v/metno)](https://pub.dev/packages/metno) [![Pub Points](https://img.shields.io/pub/points/metno)](https://pub.dev/packages/metno/score)

A wrapper for the '[Locationforecast](https://api.met.no/weatherapi/locationforecast/2.0/documentation)' weather api provided by the Norwegian Meteorological Institute.

Said api is a free and open weather api that provides weather data for any location in the world. It is used by many big open-source projects, like [Home Assistant](https://www.home-assistant.io/integrations/met), as a featured weather data source.

## Usage

Usage is simple. You just have to call the `Weather.fetch` method with the latitude, longitude, and optionally the altitude of the location you want to get the weather for. The method returns a `Weather` object that contains the weather data for the location.

```dart
import 'package:metno/metno.dart';

void main() async {
    var weather = await Weather.fetch(
        latitude: 51.5, longitude: -0.1, altitude: 11, userAgent: "demo");
    // To get the current weather data:
    print(weather.properties.timeseries.first.data.instant.details);
}
```

As you may have already noticed, the `fetch` method also takes an optional `userAgent` parameter. This is the user agent that will be used when fetching the data from the api. The default value is `metno/1.0 (https://pub.dev/packages/metno)`, but you should change it to something more specific to your application. The api may block requests with generic user agents to prevent abuse.

Alternatively, you can use the `Weather.parse` method to parse a map of weather data that you have fetched from the api yourself, or have stored onto disk:

```dart
var weather = Weather.parse(json.decode(yourData));
print(weather.properties.meta.updatedAt);
```

## Documentation

A detailed documentation for all the properties and error codes can be found [here](https://api.met.no/weatherapi/locationforecast/2.0/documentation), at the official api documentation. If you have any problems or questions, feel free to open an issue.
