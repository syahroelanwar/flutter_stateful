import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int no = 0;
  String msg = "";
  void tambahNilai(){
    setState(() {
      no += 1;
    });
  }

  void kurangNilai(){
    setState(() {
      if(no > 0) {
        no -= 1;
      }else{
        no = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Statefull Widget"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                no.toString(),
                style: TextStyle(fontSize: 20 + no.toDouble()),),
              RaisedButton(
                  onPressed: tambahNilai,
                  child: Text("Tambah"),
              ),
              RaisedButton(
                  onPressed: kurangNilai,
                  child: Text("Kurang"),
              ),
              Text(msg,style: TextStyle(color: Colors.red, fontSize: 20),)
            ],
          ),
        ),
      )
    );
  }
}

