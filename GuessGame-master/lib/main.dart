import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess Game - Kennedy',
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
      home: MyHomePage(title: ''),
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
  String t1,t2,res='';
  int n1;
  Guess guess = Guess();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      res = guess.seeCorrectGuess(n1);
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(res),
            ),
            TextField(onChanged: (text){
              t1 = text;
              n1 = int.parse(t1);
            },
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter 1-100'),keyboardType: TextInputType.number,
            ),
            RaisedButton(child: Text('Guess the number'),onPressed: _incrementCounter,)
          ],
        ) ,
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Guess{
  int num = 0;
  int secret = Random().nextInt(100);
  int count = 0;
  String output = '';


  Guess({this.num});

  String seeCorrectGuess(num){
    count++;
   if(validate(num)){
     if( num - secret <=10 && num-secret > 0)
       output = 'Too high and close';
     else if(secret - num <= 10 && secret - num > 0)
       output = 'Too low and close';
     else if(num > secret && num - secret > 10)
       output = 'Too high';
     else if(num < secret && secret - num > 10)
       output = 'Too low';
     else if(num == secret)
       output = 'Congratulations, it took you '  + count.toString() + " tries";
     return output;
   }
   return 'Invalid Entry';
  }

  bool validate(num){
    if(num > 100 || num < 0){
      return false;
    }
    return true;
  }


}