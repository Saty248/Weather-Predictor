import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'location_form.dart';
import 'text_section.dart';
import 'package:hello_flutter/models/location.dart';
class locationDetail extends StatelessWidget  {


  @override
  Widget build(BuildContext context){
    final locations=Location.fetchAll();
    final location=locations.first;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Predictor',textAlign: TextAlign.center,),


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          ImageBanner(location.imagePath),
          
          Text('Add Location',textAlign: TextAlign.center,),
          LocationForm(),
          Text('Add date',textAlign: TextAlign.center,),
          LocationForm()


        ]..addAll(textSections(location)) ,

      )
    );
  }
  
  List<Widget> textSections(Location location){
     return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}