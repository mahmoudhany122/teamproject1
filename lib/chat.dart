import 'package:flutter/material.dart';
import 'package:teamproject/shared/services.dart';

import 'models/chat_model.dart';


class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});


  var textController = TextEditingController();

  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0.0,
        title: const Center(
          child: Text(
              "Chat"),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: const EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(messages[index].messageContent, style: const TextStyle(fontSize: 15),),
                  ),
                ),
              );
            },
          ),
          const Spacer(),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (data) {
                      ChatMessages messages = ChatMessages();
                      messages.getChat(msg:"Bye");
                      print(data);
                    },
                    controller: textController,
                    decoration: const InputDecoration(
                      hintText: "write your message",
                      border: OutlineInputBorder(
                      ),
                    ),
                    validator: (value) {

                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                  ),
                  onPressed: () {
                    print(textController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}