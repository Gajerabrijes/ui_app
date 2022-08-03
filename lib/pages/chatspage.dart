import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      floatingActionButton:Column(children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
      IconButton(onPressed: (){}, icon: Icon(Icons.message)),
    ],
    ),
    body: Column(
      children: [
        Expanded(
          child:  ListView.builder(itemCount:5,itemBuilder: ((context,index){
            return
              Padding(padding: const EdgeInsets.only(left: 20,right: 20),
              child: Card(
                child: Row(
                  children: [const CircleAvatar(backgroundColor: Colors.amber,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,children: [Row(children: const[Text("Brijesh"),
                    SizedBox(width: 360,),
                    Text("5:30")
                    ],
                    ),
                    Text("Good Morning"),
                    ],

                  )
                  
                  ],
                ),
              ),
              );
          }
          ) 
          ,),
          ),
      ],
    ),

    );
    
  }
}