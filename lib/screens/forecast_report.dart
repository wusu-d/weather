import 'package:flutter/material.dart';
import 'package:nu_weather/components/daily_forecast.dart';

import '../components/hour_forecast.dart';

class MakeDismissible extends StatelessWidget {
  const MakeDismissible({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }
}

class ForecastReport extends StatelessWidget {
  const ForecastReport({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MakeDismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.5,
        maxChildSize: 0.85,
        builder: (context, scrollController) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          padding: EdgeInsets.only(left: 29, right: 21, top: 21, bottom: 20),
          child: ListView(
            controller: scrollController,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color(0xff9D9D9D))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      width: 152,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(22, 112, 71, 235),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Forecast Report',
                            style: TextStyle(
                              color: Color(0xff8862FC),
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff8862FC),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border:
                            Border.all(width: 0.55, color: Color(0xffD5C7FF))),
                    padding: EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HourlyForecast(),
                        HourlyForecast(),
                        HourlyForecast(),
                        HourlyForecast(),
                        HourlyForecast(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Next Forcast',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff8862FC),
                            borderRadius: BorderRadius.circular(8)),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                        child: Text(
                          'Five days',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffD5C7FF),
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(children: [
                      DailyForecast(),
                      DailyForecast(),
                      DailyForecast(),
                      DailyForecast(),
                      DailyForecast()
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
