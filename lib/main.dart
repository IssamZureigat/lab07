
import 'package:flutter/material.dart';
import 'secreen_one.dart';
import 'secreen_two.dart';

void main() {
  runApp( MaterialApp(theme: ThemeData(fontFamily: 'Lobster'),home: MyApp() ,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "JOCKER",
            style: TextStyle(color: Colors.amber),
          ),
        ),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://wallpaperaccess.com/full/1766994.jpg"),
                  fit: BoxFit.cover
                  
                  )),


          child:
              SizedBox(width: double.infinity,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [ 
                
                ElevatedButton(onPressed: (){setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return secreen_two();}));
                }); }, child: Text("Play Game")),
                ElevatedButton( onPressed: (){setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return secreen_one();}));
                }); }, child: Text("Game settings")),]),
              ),





































        ));
  }
}


