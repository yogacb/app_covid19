import 'package:flutter/material.dart';
import 'package:app_covid19/model/covid.dart';
import 'package:app_covid19/theme.dart';

class CovidCard extends StatelessWidget {
  final Covid covid;
  CovidCard(this.covid);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Nama: ${covid.name}'),
          Text('Type: ${covid.type}'),
          Text('Konfirmasi: ${covid.infected}'),
          Text('Sembuh: ${covid.recovered}'),
          Text('Meninggal: ${covid.fatal}'),
        ],
      ),
    );
  }
}
