import 'package:flutter/material.dart';

class LocationForm extends StatefulWidget{
  const LocationForm({super.key});
  
  @override
  LocationFormState createState(){
    return LocationFormState();
  }
}

class LocationFormState extends State<LocationForm>{
  final _formKey=GlobalKey<FormState>();
  @override
  @override
  Widget build(BuildContext context){
    return Form(
        key: _formKey,
        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value){
              if(value==null || value.isEmpty){
                return 'please enter value';
              }
              return null;
            },
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16),
          child: ElevatedButton(
            onPressed: (){
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('processing ..please wait '))
                );
                
              }
            },
            child: const Text('Submit'),
          ),
          )
        ],)

    )

    ;
  } 
}
 
