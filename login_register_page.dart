import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          // hintText: 'Enter your product description',
          labelStyle: TextStyle(color: Colors.white),
          labelText: title,
          floatingLabelBehavior: FloatingLabelBehavior.auto),
      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(
        isLogin ? 'Login' : 'Register',
        style: TextStyle(color: Colors.black),
      ),
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? 'Register instead' : 'Login instead'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 85,
              ),
              Image.asset(
                "assets/k.jpg",
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 75,
              ),
              _entryField('email', _controllerEmail),
              SizedBox(
                height: 15,
              ),
              _entryField('password', _controllerPassword),
              _errorMessage(),
              SizedBox(
                height: 25,
              ),
              _submitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
