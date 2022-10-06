import 'package:flutter/material.dart';

class DailyForecast extends StatelessWidget {
  const DailyForecast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xffE3E3E3), width: 0.8),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'April 9',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'DM Sans',
            ),
          ),
          Image.asset('images/rising.png'),
          Text(
            '30',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'DM Sans',
            ),
          )
        ],
      ),
    );
  }
}
