import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {

  late final String _assetPAth;
  ImageBanner(this._assetPAth);


  @override
  Widget build(BuildContext context){
    return Container(
      constraints: BoxConstraints.expand(
          height: 200.0,


      ),
      decoration: BoxDecoration(color: Colors.grey),
    child: Image.asset(_assetPAth,
    fit: BoxFit.cover,
    ),
    );
  }
}