class ApiCovid {
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int active;
  final int critical;
  final int totalTests;

  ApiCovid({this.cases, this.todayCases, this.deaths, this.todayDeaths, this.recovered, this.active, this.critical, this.totalTests});

  factory ApiCovid.fromJson(Map<String, dynamic> json) {
    return ApiCovid(
      cases: json['cases'],
      todayCases: json['todayCases'],
      deaths: json['deaths'],
      todayDeaths: json['todayDeaths'],
      recovered: json['recovered'],
      active: json['active'],
      critical: json['critical'],
      totalTests: json['totalTests'],
    );
  }
}