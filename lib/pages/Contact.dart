import 'package:flutter/material.dart';

import '../Models/ContactModel.dart';
import '../Models/ConversationModel.dart';
import '../utils/constants.dart';
import '../utils/constantsData.dart';


class ListeConversations extends StatefulWidget {
  const ListeConversations({Key? key}) : super(key: key);

  @override
  State<ListeConversations> createState() => _ListeConversationsState();
}

class _ListeConversationsState extends State<ListeConversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
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

     /* ListView.builder(
        itemCount: ConstanteData.fakeFideleList.length,
        itemBuilder: (ctx, i){
          var fidele = ConstanteData.fakeFideleList[i];
          var mes = ContactModel.fromJson(fidele);
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
