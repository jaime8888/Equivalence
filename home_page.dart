import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'offline_page.dart';
import 'online_page.dart';
import 'auth.dart';

void main() {
  runApp(HomePage(
    title: '',
  ));
}

class HomePage extends StatelessWidget {
  HomePage({Key? key, required String title}) : super(key: key);

  int _counter = 0;
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.jpeg"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 330,
          ),
          Row(
            children: [
              SizedBox(
                width: 150,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (Onli(
                              title: '',
                            ))),
                  );
                }),
                child: Text(
                  "  ONLINE  ",
                  style: TextStyle(color: Color.fromARGB(255, 1, 34, 61)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
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
                width: 150,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Ofli(
                              title: '',
                            )),
                  );
                }),
                child: Text(
                  "  OFFLINE ",
                  style: TextStyle(color: Color.fromARGB(255, 1, 34, 61)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 285,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 290,
              ),
              ElevatedButton(
                onPressed: (signOut),
                child: Text(
                  "  Log Out ",
                  style: TextStyle(color: Color.fromARGB(255, 1, 34, 61)),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
              )
            ],
          )
        ],
      ),
    ));
  }
}
