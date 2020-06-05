import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
      
      body:Center(
        child:
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            child: Wrap(
                direction: Axis.horizontal,
                spacing: 16.0,
                runSpacing: 8.0,
                children: <Widget>[
                  SizedBox(
                    width: 360,
                    height: 200,
                    
                    child: 
                      SizedBox(
                        child: Card(
                          color: Colors.redAccent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.local_hospital, size: 100),
                              ButtonBar(
                                children: <Widget>[
                                  RaisedButton(
                                    child: const Text('Appointment'),
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
                    width: 360,
                    height: 200,
                    child: 
                      SizedBox(
                        child: 
                        Card(
                          color: Colors.greenAccent,
                          child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.person, size: 100),
                              ButtonBar(
                                children: <Widget>[
                                  RaisedButton(
                                    child: const Text('Patient Information'),
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
                    width: 360,
                    height: 200,
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
                              Icon(Icons.group_add, size: 100),
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
                  
              ]
            ),
        ),
      )
    );
  }
}
