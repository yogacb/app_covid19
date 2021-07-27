class Covid {
  String type;
  String name;
  int infected;
  int recovered;
  int fatal;

  Covid({this.name, this.fatal, this.infected, this.recovered, this.type});

  Covid.fromJson(json) {
    type = json['type'];
    name = json['name'];
    infected = json['numbers']['infected'];
    recovered = json['numbers']['recovered'];
    fatal = json['numbers']['fatal'];
  }
}
