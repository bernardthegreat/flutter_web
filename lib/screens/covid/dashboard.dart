import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_web/models/CovidProvider.dart';
import 'package:flutter_web/services/api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Covid extends StatefulWidget {
  Covid({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();

}


class _MyAppState extends State<Covid> {
  Future<ApiCovid> futureApiCovid;
    final double width = 270;
    final double height = 150;
  
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
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  child: Wrap(
                    direction: Axis.vertical,
                    
                    children: <Widget> [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  width: width,
                                  height: height,
                                  child: Card(
                                    color: Colors.orangeAccent,
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.userPlus, size: 100,),
                                          Text('Total Cases \n' + snapshot.data.cases.toString(), textAlign: TextAlign.center,),     
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  height: height,
                                  width: width,
                                  child: Card(
                                    color: Colors.yellowAccent,
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.virusSlash, size: 100,),
                                          Text('Active Cases \n' + snapshot.data.active.toString(), textAlign: TextAlign.center,),     
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  height: height,
                                  width: width,
                                  child:Card(
                                    color: Colors.green[900],
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.handHoldingHeart, size: 100, color: Colors.white,),
                                          Text('Recoveries \n' + snapshot.data.recovered.toString(), 
                                              textAlign: TextAlign.center, 
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                          ), 
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  width: width,
                                  height: height,
                                  child: Card(
                                    color: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.handHoldingMedical, size: 100, color: Colors.white),
                                          Text('Deaths \n' + snapshot.data.deaths.toString(), 
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),     
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  height: height,
                                  width: width,
                                  child: Container(
                                    width: width,
                                    height: height,
                                    child: Card(
                                      color: Colors.red[900],
                                      child: Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            FaIcon(FontAwesomeIcons.heartbeat, size: 100, color: Colors.white),
                                            Text('Critical Cases \n' + snapshot.data.critical.toString(), 
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),     
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  width: width,
                                  height: height,
                                  child: Card(
                                    color: Colors.blue[800],
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.shieldVirus, size: 100, color: Colors.white),
                                          Text('Today Cases \n' + snapshot.data.todayCases.toString(), 
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),     
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  width: width,
                                  height: height,
                                  child: Card(
                                    color: Colors.redAccent[400],
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.virusSlash, size: 100, color: Colors.white),
                                          Text('Today Deaths \n' + snapshot.data.todayDeaths.toString(), 
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white
                                            )
                                          ),     
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(35),
                                child: Container(
                                  width: width,
                                  height: height,
                                  child:Card(
                                    color: Colors.purple[700],
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.users, size: 100, color: Colors.white),
                                          Text('Total Tested \n' + snapshot.data.totalTests.toString(), 
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white, 
                                            ),
                                          ),     
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),




                    ],
                  )
                );
                  
                //return Text('Total sdfCases: '+snapshot.data.cases.toString());
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return (
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: MediaQuery.of(context).size.height/3,
                  child: CircularProgressIndicator()
                )
                
              );
            },
          ),
        ),
        
      ),
    );

  }
}