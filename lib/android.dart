import 'package:flutter/material.dart';

import 'androidKotlin.dart';
import 'androidjava.dart';

class AndroidPage extends StatefulWidget {
  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  String male = 'Male';
  String female = 'Female';
  String group = 'g';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("Welcome Android Learner" , style: TextStyle(color: Colors.white),),
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
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  title: Text('Android Kotlin'),
                                  leading: Radio(
                                      value: male,
                                      groupValue: group,
                                      onChanged: (value) {
                                        setState(() {
                                          group = value!;

                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>  androidKotlin(),
                                            ),
                                          );

                                        });
                                      }),
                                ),
                                ListTile(
                                  title: Text('Android Java'),
                                  leading: Radio(
                                      value: female,
                                      groupValue: group,
                                      onChanged: (value) {
                                        setState(() {
                                          group = value!;
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>  androidJava(),
                                            ),
                                          );
                                        });
                                      }),
                                ),

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
