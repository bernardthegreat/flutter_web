import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;




/*


Future<Cases> fetchAlbum() async {
  final response =
      await http.get('https://coronavirus-19-api.herokuapp.com/countries/philippines');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Cases.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class ApiCases {
  final int userId;
  final int id;
  final String title;

  Cases({this.userId, this.id, this.title});

  factory Cases.fromJson(Map<String, dynamic> json) {
    return Cases(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class Cases extends StatefulWidget {
  Cases({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Cases> {
  Future<Cases> futureCases;

  @override
  void initState() {
    super.initState();
    futureCases = fetchCases();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Cases>(
            future: futureCases,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

*/
    
  Future<ApiCovid> fetchCovid() async {
    final response =
        await http.get('https://coronavirus-19-api.herokuapp.com/countries/philippines');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return ApiCovid.fromJson(json.decode(response.body));
      //print(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

class ApiCovid {
  final int cases;
  final int todayCases;
  final int deaths;

  ApiCovid({this.cases, this.todayCases, this.deaths});

  factory ApiCovid.fromJson(Map<String, dynamic> json) {
    return ApiCovid(
      cases: json['cases'],
      todayCases: json['todayCases'],
      deaths: json['deaths'],
    );
  }
}



class Covid extends StatefulWidget {
  Covid({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

}


class _MyAppState extends State<Covid> {
  Future<ApiCovid> futureApiCovid;
    final double width = 300;
    final double height = 200;
  
  @override
  void initState() {
    super.initState();
    futureApiCovid = fetchCovid();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19 Tracker'),
      ),
      body:SingleChildScrollView(
        child:Center(
          child:FutureBuilder<ApiCovid>(
            future: futureApiCovid,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.cases.toString());
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
        
      ),
    );

  }
}