import 'package:flutter/material.dart';
import 'advancejava.dart';
import 'corejava.dart';

class JavaPage extends StatefulWidget {
  @override
  State<JavaPage> createState() => _JavaPageState();
}

class _JavaPageState extends State<JavaPage> {

  String male = 'Male';
  String female = 'Female';
  String group = 'g';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("Welcome Java Learner" , style: TextStyle(color: Colors.white),),
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
                              title: Text('Core Java'),
                              leading: Radio(
                                  value: male,
                                  groupValue: group,
                                  onChanged: (value) {
                                    setState(() {
                                      group = value!;
                                      group = value!;
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>  MalePage(),
                                        ),
                                      );

                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text('Advance Java'),
                              leading: Radio(
                                  value: female,
                                  groupValue: group,
                                  onChanged: (value) {
                                    setState(() {
                                      group = value!;
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>  FemalePage(),
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
