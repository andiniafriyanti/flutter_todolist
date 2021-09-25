import 'package:flutter/material.dart';
import 'ui_view/page2.dart';
import 'ui_view/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Todolist'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: MaterialButton(
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                //pindah kelas activity
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
              child: Text('Page1'),
            ),
          ),
          Container(
            child: FlatButton(
                onPressed: () {
                  //pindah class
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                color: Colors.blue,
                child: Text('Page 2')),
          ),
          Container(
            child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page3()));
                },
                color: Colors.green,
                child: Text('Halaman Latihan')),
          ),
        ],
      ),
    );
  }
}

//untuk pindah class dengan nav , navigator.pus = dari A ke B, navigator.pop= dari B ke A

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        //digunakan untuk menambah ruang kosong di layar
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.message,
            color: Colors.redAccent,
            size: 50.0,
          ),
          Icon(
            Icons.person,
            color: Colors.redAccent,
            size: 50.0,
          ),
          Icon(
            Icons.calendar_today,
            color: Colors.redAccent,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
