import 'package:flutter/material.dart';
import 'package:app_covid19/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 21, right: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'COVID-19',
                style: blackTextStyle.copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Indonesia Live Data',
                style: blackTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 92,
                    width: 159,
                    color: redColor,
                  ),
                  Container(
                    height: 92,
                    width: 159,
                    color: blueColor,
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 92,
                    width: 159,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Meninggal',
                            style: whiteTextStyle.copyWith(fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '2.000.000',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
