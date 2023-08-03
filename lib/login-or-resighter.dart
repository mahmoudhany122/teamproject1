import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teamproject/chat.dart';


class LogRes extends StatelessWidget {
  const LogRes({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:MainAxisAlignment.center,
            children:
              [
                Column(
                  children: [
                    Center(
                      child: Text(
                        "Hello in our app ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Chat app",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ],
                ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.blueGrey[500],
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(
                               child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                               onPressed: (){},
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.blueGrey[500],
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.blueGrey[500],
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(
                            child: const Text(
                              "LOGIN as A host",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: ()
                            {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>ChatScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Text(
                            " Follow our social app accounts ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {  },
                              child: const Icon(Icons.facebook,
                                color: Colors.indigo,
                                size: 33,
                              ),
                            ),
                            TextButton(
                              onPressed: () {  },
                              child: const Image(
                                image:AssetImage(
                                    'assets/images/icons8-instagram-96.png'
                                ),
                                width:28,
                                height: 35,

                              ),
                            ),
                            TextButton(
                              onPressed: () {  },
                              child:const Image(
                                image:AssetImage(
                                    'assets/images/icons8-whatsapp-96.png'
                                ),
                                width:40,
                                height: 35,

                              ) ,
                            ),
                            TextButton(
                              onPressed: () {  },
                              child: const Image(
                                image:AssetImage(
                                    'assets/images/icons8-twitter-96.png',
                                ),
                                width:40,
                                height: 35,

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ],
              )
            ),
        );
  }
  /*calling()async
  {
    const url = "https://www.facebook.com/nour.muhammad.33633?mibextid=ZbWKwL";
    if(await canLaunch(url))
    {
      await launch(url);
    }else
    {
      throw"couldnotlanuch$url";
    }
  }
  watsApp()async
  {
    const url = "";
    if(await canLaunch(url))
    {
      await launch(url);
    }else
    {
      throw"couldnotlanuch$url";
    }
  }
  instagram()async
  {
    const url = "https://instagram.com/nour.elfiky.1?igshid=Yzg5MTU1MDY=";
    if(await canLaunch(url))
    {
      await launch(url);
    }else
    {
      throw"couldnotlanuch$url";
    }
  }
  twitter()async
  {
    const url = "https://twitter.com/NourElfiky1?s=35";
    if(await canLaunch(url))
    {
      await launch(url);
    }else
    {
      throw"couldnotlanuch$url";
    }
  }*/


}
