import 'package:hello_flutter/models/location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name,this.imagePath,this.facts);


  static List<Location> fetchAll(){
    return [
      Location('location1', 'assets/images/img1.jpg', [
        //LocationFact('summary1', 'text1'),
       // LocationFact('summary1', 'text1'),
      ])
    ];



  }
}