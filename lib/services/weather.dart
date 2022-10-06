import 'package:nu_weather/services/location.dart';
import 'package:nu_weather/services/networking.dart';

class WeatherModel {
  Future getLocationWeather() async {
    // Location location = Location();
    // await location.getPosition();

    Uri url = Uri.https('api.openweathermap.org', 'data/2.5/weather', {
      'lat': '21',
      'lon': '21',
      'appid': 'b5160da436cb7f6277fa23e671ac7ae4',
      'units': 'metric',
    });

    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getWeatherData();

    return weatherData;
  }
}
