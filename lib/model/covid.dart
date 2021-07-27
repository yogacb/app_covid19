class Covid {
  String type;
  String name;
  int infected;
  int recovered;
  int fatal;

  Covid({this.name, this.fatal, this.infected, this.recovered, this.type});

  Covid.fromJson(json) {
    type = json['Kode_Provi'];
    name = json['Provinsi'];
    infected = json['Kasus_Posi'];
    recovered = json['Kasus_Semb'];
    fatal = json['Kasus_Meni'];
  }
}
