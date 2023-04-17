import 'package:flutter/material.dart';

class DetailsMessages extends StatefulWidget {
  const DetailsMessages({Key? key}) : super(key: key);

  @override
  State<DetailsMessages> createState() => _DetailsMessagesState();
}

class _DetailsMessagesState extends State<DetailsMessages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar(){
    return AppBar(
      backgroundColor: Colors.indigo[900],
      leading: Icon(Icons.arrow_left),
      title: Text("Discussion",
          style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20)
      ),
      actions: [
        Icon(Icons.phone),
        SizedBox(width: 10),
        Icon(Icons.video_camera_back_rounded),
        SizedBox(width: 10),
        //Icon(Icons.camera_sharp),
      ],
    );
  }

  Widget _body(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _messageLeft("Salut ! T'as fini le tp de Mr Daniel ?"),
        SizedBox(height: 20),

        _messageRight("Salut, il reste deux trois petites modifications..."),
        SizedBox(height: 10),
        _messageRight("Et toi?"),

        SizedBox(height: 20),
        _messageLeft("Wep, je l'ai fini"),

        SizedBox(height: 20),
        _messageRight("Top"),

        SizedBox(height: 10),
        _bottombar(),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _messageLeft(String message){
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Icon(Icons.person_pin),
          Container(
            height: 50,
            width: 300,
            color: Colors.black,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text("$message",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ) ;
  }

  Widget _messageRight(String message){
    return Row(
      children: [
        SizedBox(width: 60,),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 50,
            width: 300,
            color: Colors.blueGrey[100],
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("$message",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
            ),
          ),
        ),
        Icon(Icons.person_pin_circle_outlined),

      ],
    ) ;
  }

  Widget _bottombar(){
    return Row(
      children: [
        Icon(Icons.add),
        Container(
          width: 300,
          height: 40,
          child: TextField(decoration: InputDecoration(border: _border(Colors.grey),  focusedBorder: _border(Colors.blueGrey),enabledBorder: _border(Colors.grey)),),

        ),
        SizedBox(width: 10),
        Icon(Icons.camera_alt),
        SizedBox(width: 5),
        Icon(Icons.mic_none),
      ],
    );
  }

  OutlineInputBorder _border(MaterialColor _color) {
    return OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: _color),
        borderRadius: BorderRadius.all(Radius.circular(30)));
  }
}