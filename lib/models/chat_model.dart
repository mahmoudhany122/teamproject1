class ChatMessage{
  String? msg;
  String ? messageType;

  ChatMessage({
    this.msg,
    this.messageType,
});

  ChatMessage.fromJson(Map<String,dynamic>json)
  {
    msg = json["msg"];
    messageType=json["patterns"];

  }
  Map<String,dynamic> toMap()
  {
    return{
      "msg":msg,
      "patterns":messageType

    };

  }
}