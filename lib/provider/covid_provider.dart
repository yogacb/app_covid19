import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:app_covid19/model/covid.dart';
import 'package:http/http.dart' as http;

class CovidProvider extends ChangeNotifier {
  getCovidData() async {
    var result = await http.get(
      Uri.parse('https://dekontaminasi.com/api/id/covid19/stats'),
    );

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['regions'];
      data.first['number'];
      List<Covid> covid = data.map((item) => Covid.fromJson(item)).toList();
      return covid;
    } else {
      return <Covid>[];
    }
  }
}
