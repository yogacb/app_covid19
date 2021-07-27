import 'package:app_covid19/model/covid.dart';
import 'package:app_covid19/widget/covid_card.dart';
import 'package:flutter/material.dart';
import 'package:app_covid19/provider/covid_provider.dart';
import 'package:provider/provider.dart';
import 'package:app_covid19/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var covidProvider = Provider.of<CovidProvider>(context);
    covidProvider.getCovidData();
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          FutureBuilder(
            future: covidProvider.getCovidData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Covid> data = snapshot.data;
                int index = 0;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: data.map((item) {
                    index++;

                    return Container(
                      margin: EdgeInsets.only(
                        top: index == 1 ? 0 : 30,
                      ),
                      height: 88,
                      width: MediaQuery.of(context).size.width - (2 * 24),
                      child: CovidCard(item),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: blueColor),
                    );
                  }).toList(),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ]),
      ),
    );
  }
}
