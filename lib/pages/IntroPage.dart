import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _Princolumn()) ;
  }
}


Widget _Princolumn(){
  return Column(
    children: [
      Flexible(child: _Princontent())
    ],
  );
}

Widget _Princontent(){
  return Container(
    color: Colors.white,
    height: double.infinity,
    width: double.infinity,
    child: _logoApp(),
  );
}

Widget _logoApp(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.wechat, size: 200, color: Colors.lightBlue,),
      Text('SMS', style:TextStyle(color: Colors.lightBlue, fontSize: 26)),
    ],);
}

