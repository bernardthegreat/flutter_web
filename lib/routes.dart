import 'package:flutter/widgets.dart';

import 'screens/covid/dashboard.dart';
import 'screens/doctors/dashboard.dart';
import 'screens/laboratory/dashboard.dart';
import 'screens/patients/dashboard.dart';
import 'screens/patients/home.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Home(),
  "/patient": (BuildContext context) => Patient(),
  "/doctor": (BuildContext context) => Doctor(),
  "/results": (BuildContext context) => Laboratory(),
  "/covid": (BuildContext context) => Covid(),
};

