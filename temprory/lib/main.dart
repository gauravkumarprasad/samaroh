import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'custom_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
    );

  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var nametext="";
  var emailtext="";
  var nameController= TextEditingController();
  var emailControlller=TextEditingController();
  var ison= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Text(ison? "on": "off"),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 20),
                    child: Switch(activeColor: Colors.greenAccent,value: ison, onChanged:(value) {
                      ison = value;
                      setState(() {

                      });
                    },),
                  ),
                  ElevatedButton(onPressed: () {
                    showDialog(context: context, builder:(context) {
                      return AlertDialog(
                       title: Text("logOut"),
                        content: Text("Are You Sure Want to Log Out?"),
                        actions: [
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text("Yes")),
                          TextButton(onPressed: () {
                            Navigator.pop(context);

                          }, child: Text("No")),
                        ],
                      );
                    },);
                  }, child:Text("show Alert dilog")),
                  ElevatedButton(onPressed: () {
                    Fluttertoast.showToast(msg: "Hello Gaurav Ji");
                  }, child: Text("Toast")),

                  Container(
                    child: ElevatedButton(onPressed: () {
                      showDialog(context: context, builder:(context) {
                        return Dialog(
                          child:Column(
                            children: [
                              Text("logOut"),
                               Text("Are You Sure Want to Log Out?"),
                                TextButton(onPressed: () {
                                  Navigator.pop(context);
                                }, child: Text("Yes")),
                                TextButton(onPressed: () {
                                  Navigator.pop(context);

                                }, child: Text("No")),

                            ],
                          ),

                        );
                      },);
                    }, child:Text("show Alert dilog")),
                  ),
                ],
              ),
            ),
            Text(nametext),
            Text(emailtext),
            TextField(controller: nameController,),
            TextField(controller: emailControlller,),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 60,right: 60),
              child: ElevatedButton(onPressed: () {
                nametext = nameController.text;
                emailtext= emailControlller.text;
                setState(() {

                });
              }, child: Text("click")),
            )
          ],

        ),
      );


  }
}




