import 'package:flutter/material.dart';
class LocationButton extends StatelessWidget{
  const LocationButton({super.key});
  @override
  Widget build(BuildContext context){
    return GestureDetector(onTap: (){print('this button is clicked');},
    child: Container(height: 50,padding: const EdgeInsets.all(8),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color:Colors.lightBlue[500]),
      child: const Center(
        child: Text('add location'),
      )
      )
    
    )
    
    ;
  }
}