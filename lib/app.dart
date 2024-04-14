import 'package:flutter/material.dart';
import 'screens/location_details/locations.dart';
import 'style.dart';
class App extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: locationDetail()
    );
  }
}