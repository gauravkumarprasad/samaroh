import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:temprory/main.dart';


class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context) {
            return Dialog(
              child: Column(
                children: [
                  Text("Dialog title"),
                  Text("Dialog Description"),
                  ElevatedButton(onPressed: () {
                    Fluttertoast.showToast(msg: "Thank you");
                    Navigator.pop(context);
                  }, child: Text("Ok"))
                ],
              ),
            );
          },);
        }, child: Text("Custom alert")),
      ),
    );
  }
}
