import 'package:flutter/material.dart';
import 'package:flutter_todolist/ui_view/login.dart';
import 'package:flutter_todolist/ui_view/signup.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Latihan'),
      ),
      backgroundColor: Colors.lightBlueAccent,
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
            height: 130.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'This is solution for online learning ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'In here you can read the ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'All Of Books ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //button
          // Flat Button
          //Raise Button
          //material button
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                //Pindah Class
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                //Pindah Class
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
