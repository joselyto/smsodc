import 'package:flutter/material.dart';
import 'package:smsodc/pages/message.dart';




class MonApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: MessageODC());
  }
  
}