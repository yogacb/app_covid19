import 'package:flutter/material.dart';
import 'package:app_covid19/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 21),
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
              Container(
                height: 92,
                width: 159,
                color: redColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
