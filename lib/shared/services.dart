import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatMessages{
  void getChat({required String msg})async{
    Uri url = Uri.parse(
        'http://10.0.2.2:5000/ChatBot/Bye');
    http.Response response = await http.get(url);

    Map<String,dynamic> data = jsonDecode(response.body);
    print(data);



 }
}