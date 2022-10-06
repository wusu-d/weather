import 'package:flutter/material.dart';
import 'package:nu_weather/screens/forecast_report.dart';
import 'package:nu_weather/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.weatherData}) : super(key: key);

  final weatherData;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String temperature;
  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = '0';
        return;
      }

      var temp = weatherData['main']['temp'];
      temperature = temp.toString();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    updateUI(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 27, right: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff8862FC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin, color: Colors.white, size: 25),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DM Sans',
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0xff8862FC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(Icons.notifications,
                          color: Colors.white, size: 25),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 45),
              decoration: BoxDecoration(
                  color: Color(0xff8862FC),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.7, color: Color(0xffB9BCF2))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/weather.png',
                          height: 65,
                          width: 78,
                        ),
                        Column(
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text('Mon, 12 Oct',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ))
                          ],
                        ),
                      ],
                    ),
                    Text('$temperature',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 154,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                        )),
                    Text('Lagos, Nigeria 2:00 p.m',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                        ))
                  ]),
            ),
            GestureDetector(
                onTap: () => showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => ForecastReport(),
                    ),
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      color: Color(0xff8862FC),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forecast reports',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
