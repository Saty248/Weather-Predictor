import 'package:flutter/material.dart';



class TextSection extends StatelessWidget{


  late final String _title;
  late final String _body;
  static const double _hpad=16.0;

  TextSection(this._title,this._body, {super.key});

@override
  Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
        child:    Text(_title),
      ),



    ],
  );
}
}

