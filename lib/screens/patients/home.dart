import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {

  final double width = 300;
  final double height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Patients Management',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        brightness: Brightness.light,
        elevation: 1,
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.help),
        label: const Text('Help'),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: BottomAppBar(
        elevation: 20,
        color: Colors.lightBlueAccent,
        child: 
          Padding(
            padding: const EdgeInsets.all(20.0),
            
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                /*
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                */
              ],
            ),
            
          ),
      ),
      
      body:SingleChildScrollView(
        child:Center(
          child:Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            child: Wrap(
                direction: Axis.horizontal,
                spacing: 16.0,
                runSpacing: 8.0,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    SizedBox(
                      width: width,
                      height: height,
                      child: SizedBox(
                        child: Card(
                          color: Colors.redAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.hospital, size: 100,),
                              ButtonBar(
                                children: <Widget>[
                                  RaisedButton(
                                    child: const Text('Appointment'),
                                    color: Colors.grey[900],
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: SizedBox(
                        child: Card(
                          color: Colors.greenAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.hospitalUser, size: 100,),
                              ButtonBar(
                                children: <Widget>[
                                  RaisedButton(
                                    child: const Text('Patient'),
                                    color: Colors.grey[900],
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/patient');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ), 
                      ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: 
                        SizedBox(
                          child: 
                          Card(
                            color: Colors.blueAccent,
                            child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.stethoscope, size: 100,),
                                ButtonBar(
                                  children: <Widget>[
                                    RaisedButton(
                                      child: const Text('Doctors'),
                                      color: Colors.grey[900],
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/doctor');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ), 
                        ),
                    ),
                    SizedBox(
                      width: width,
                      height: height,
                      child: 
                        SizedBox(
                          child: 
                          Card(
                            color: Colors.yellowAccent,
                            child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.microscope, size: 100,),
                                ButtonBar(
                                  children: <Widget>[
                                    RaisedButton(
                                      child: const Text('Results'),
                                      color: Colors.grey[900],
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/covid');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ), 
                        ),
                    ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blueAccent,
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                FontAwesomeIcons.virus,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "COVID 19",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/covid');
                        },
                      ),
                      
                    ],
                  )
                  
              ],
              

            ),
            
          ),
        ),
        
      ),
      
    );
  }
}
