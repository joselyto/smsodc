import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smsodc/utils/constants.dart';

import '../Models/ConversationModel.dart';
import '../Models/MessagesModel.dart';
import '../utils/constantsData.dart';

class MessageODC extends StatefulWidget {
  const MessageODC({super.key});

  @override
  State<MessageODC> createState() => _MessageODCState();
}

class _MessageODCState extends State<MessageODC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Nouveau'),
        icon: const Icon(Icons.add),
        backgroundColor: MycolorPerso.mycolor,
      ),

    );
  }
  

  AppBar _appBar(){
    return AppBar(
      title: Text("Boite de reception", style: TextStyle(color: Colors.white),),
      backgroundColor: MycolorPerso.mycolor,
      elevation: 0,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined)),
      actions: [
        IconButton(onPressed: (){

        }, icon: Icon(Icons.list_alt))
      ],
    );
  }

  Widget _body(){
    return ListView(
      children: [],
    );

      /*ListView.builder(
      itemCount: ConstanteData.fakeFideleList.length,
      itemBuilder: (ctx, i){
        var fidele = ConstanteData.fakeFideleList[i];
        var mes = MessageModel.fromJson(fidele);
        // return Text("${f.nom}");
        return ListTile(
          title: Text("${mes.nom}"),
          subtitle: Text("${mes.messages}"),
          trailing: Icon(Icons.more_horiz),
          leading: mes.image != null ? Image.asset(mes.image!) : Icon(Icons.error),

        );
      }
    );*/
  }

  
}