import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '29',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Image.asset(
          'images/weather.png',
          width: 25,
          height: 25,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          '8 a.m',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
