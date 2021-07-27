import 'package:app_covid19/pages/homepage.dart';
import 'package:app_covid19/provider/covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CovidProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
