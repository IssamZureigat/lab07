import 'package:lab07/main.dart';
import 'package:flutter/material.dart';


class secreen_two extends StatefulWidget {
  const secreen_two({super.key});

  @override
  State<secreen_two> createState() => _secreen_twoState();
}

class _secreen_twoState extends State<secreen_two> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(fontFamily: "Anton"),
      home: Scaffold(
        appBar: AppBar(),
        body: Container(decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdIrQEV5Pnex9vHh2n61ACQxrv3hy1ttRaHOJYVJlDyXifxlBqoaVHIydSi_Dh6FGuBnQ&usqp=CAU"),
                  fit: BoxFit.cover
                  
                  )),

            child: SizedBox(width: double.infinity,
                height: double.infinity,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Game Over", style: TextStyle(fontSize: 40,color: Colors.white)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                      return MyApp();
                    })));
                  });
                },
                child: Text("Go Back",style: TextStyle(color: Colors.black),),
              ),]),
            ))));
  }
}