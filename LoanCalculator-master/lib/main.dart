import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kenn's Loan Calculator",
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Kenn's Loan Calculator"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double n1, n2;
  String t1,t2,res ='';
CalcByKenn calc = CalcByKenn();
  void _incrementCounter() {
    setState(() {
      res = calc.doit(n1, n2);
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
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(res,
                style: TextStyle(fontSize: 15.0, fontFamily: 'courier',
                fontWeight: FontWeight.w300,
                backgroundColor: Colors.lime,
                color: Colors.black54)),
              ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter loan amount',
              ),
              keyboardType: TextInputType.number,
              onChanged: (text){
                t1 = text;
                n1=double.parse(t1);
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter weekly amount',
              ),
              keyboardType: TextInputType.number,
              onChanged: (text){
                t2 = text;
                n2=double.parse(t2);
              },
            ),
            RaisedButton(
              onPressed: _incrementCounter,
              child: Text('Loan Calculate'),
            )
          ],
        ) ,
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CalcByKenn{
  double amount = 0;
  double weekly = 0;
  String out = '';
  int counter = 0;

  CalcByKenn({this.amount,this.weekly});
  String doit(amount,weekly){
    out = '';
    counter = 0;

    if(validInput(amount,weekly)) {
      out +=
          '\n Week' + counter.toString() + ". Balance = \$" + amount.toString();
      while (amount > 0.0) {
        counter++;
        amount -= weekly;
        out += '\n Week' + counter.toString() + ". Balance = \$" +
            amount.toString();
        if (amount >= weekly) {
          amount -= weekly;
          out += '\n Week' + counter.toString() + ". Balance = \$" +
              amount.toString();
        }
        else if (amount < weekly) {
          amount = -1;
          out += '\n Week' + counter.toString() + ". Balance = \$0. Loan is paid off";
        }
      }
      return out;

    }


  }

  bool validInput(amount,weekly){
    if(amount < 0 || weekly < 0 || weekly > amount){
      return false;
    }
      return true;
  }


}
