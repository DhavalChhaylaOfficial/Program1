import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:set2/advancejava.dart';
import 'package:set2/corejava.dart';
import 'package:set2/java.dart';

import 'android.dart';

class SecondPage extends StatefulWidget {
  var name;

  SecondPage(this.name);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              title: Text("Home Page" , style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.blue,
            ),
            body: SingleChildScrollView(
              child: Center(
                //7
                child: Column(
                    //4
                    //mainAxisAlignment: MainAxisAlignment.center, //6
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Welcome: ' + widget.name,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    JavaPage()));
                                      });
                                    },
                                    child: Text("Java")),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                AndroidPage()));
                                      });
                                    },
                                    child: Text("Android")),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ));
  }
}
