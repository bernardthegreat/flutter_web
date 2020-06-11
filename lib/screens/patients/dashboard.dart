import 'package:flutter/material.dart';
import 'package:flutter_web/components/dashboard.dart';

class Patient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Screen'),
      ),
      body: Dashboard(),
    );
  }
}