import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nu_weather/screens/home_screen.dart';
import 'package:nu_weather/services/location.dart';
import 'package:nu_weather/services/weather.dart';
import 'package:nu_weather/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void getLocationData() async {
    WeatherModel weather = WeatherModel();
    var weatherData = await weather.getLocationWeather();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(weatherData: weatherData),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Weather App',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'images/weather.png',
                height: 79,
                width: 65,
              )
            ],
          ),
          SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          )
        ],
      ),
    );
  }
}
