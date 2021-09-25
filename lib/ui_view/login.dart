import 'package:flutter/material.dart';
import 'package:flutter_todolist/ui_view/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page Latihan'),
      ),
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 90.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'WELCOME TO DIGITAL LIBRARY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(
                    Icons.email,
                  ),
                  hintText: 'Your Email Address',
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person),
                  hintText: 'Your Password',
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
          Container(
            child: MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                //Pindah Class
              },
              child: Text('Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: FlatButton(
                child: Text(
                  'I Don\'t Have Account',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
