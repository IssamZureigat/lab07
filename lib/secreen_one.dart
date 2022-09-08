// import 'dart:js_util';

import 'package:lab07/main.dart';
import 'package:flutter/material.dart';
import 'secreen_two.dart';

class secreen_one extends StatefulWidget {
  const secreen_one({super.key});

  @override
  State<secreen_one> createState() => _secreen_oneState();
}

class _secreen_oneState extends State<secreen_one> {
  String Radgroup = "";
  List myitems = ["Esasy", "Medium", "Hard", "legendary"];
  String selecteditem = "Hard";

  bool C1checkval = true;
  bool C2checkval = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
            ),
            drawer: Drawer(),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://s.itl.cat/pngfile/s/206-2067764_batman-iphone-wallpaper-hd-minimal-wallpaper-for-android.jpg"),
                      fit: BoxFit.cover)),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                    child: ListView(children: [
                  Text("Welcome to the mystery world ",
                      style: TextStyle(fontSize: 25, color: Colors.grey)),
                  DropdownButton(
                    iconEnabledColor: Colors.white,
                    alignment: Alignment.center,
                    value: selecteditem,
                    dropdownColor: Colors.amber,
                    items: myitems
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                "${e}",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 93, 175, 216),
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selecteditem = val.toString();
                      });
                    },
                  ),
                  chwidget(), ggg("checkname"),ggg("hhhhhhh"),
                  // chwidget("Two Players"),
                  // chwidget("Three Players"),

                  RadioListTile(
                    title: Text(
                      "Morninng",
                      style: TextStyle(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Sunny"),
                    value: "Morninng",
                    groupValue: Radgroup,
                    onChanged: (val) {
                      setState(() {
                        Radgroup = val.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "Night",
                      style: TextStyle(
                          color: Color.fromARGB(255, 93, 175, 216),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("dark sky"),
                    value: "night",
                    groupValue: Radgroup,
                    onChanged: (val) {
                      setState(() {
                        Radgroup = val.toString();
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return secreen_two();
                        })));
                      });
                    },
                    child: Text("Start"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: ((context) {
                          return MyApp();
                        })));
                      });
                    },
                    child: Text("Home"),
                  ),
                ])),
              ),
            )));
  }
}

class ggg extends StatelessWidget {
  ggg(this.checkname);
  String? checkname;
  @override
  Widget build(BuildContext context) {
    return chwidget();
  }
}

class chwidget extends StatefulWidget {
  chwidget();

  @override
  State<chwidget> createState() => _chwidgetState();
}

class _chwidgetState extends State<chwidget> {
  bool isChecked = true;
  String? checkname;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${checkname}",
          style: TextStyle(color: Colors.amber),
        ),
        Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }
}
