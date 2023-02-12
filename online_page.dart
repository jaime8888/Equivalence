import 'package:flutter/material.dart';

void main() {
  runApp(const Onl());
}

class Onl extends StatelessWidget {
  const Onl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const Onli(title: 'Flutter Demo Home Page'),
    );
  }
}

class Onli extends StatefulWidget {
  const Onli({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Onli> createState() => OnliState();
}

class OnliState extends State<Onli> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.jpeg"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 230,
          ),
          Row(
            children: [
              SizedBox(
                width: 120,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  "KHAN ACADEMY",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 34, 61)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 20,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 155,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  "REPLIKA",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 34, 61)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 105,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  "STUDY COMMUNITY",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 34, 61)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 20,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 95,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  "PSYCHOLOGICAL TEST",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 34, 61)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 20,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 110,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  "PROGRESS CHECK",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 34, 61)),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
