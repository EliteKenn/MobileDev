import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kennedy's Recursive Power Factorial App",
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
      home: MyHomePage(title: 'Recursive Power Factorial App'),
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
  int n1;
  int n2;
  int n3;
  String t1='',t2='',t3 = '';
  String res = '';
Calculations fish = Calculations();
  void _incrementCounter() {
    setState(() {
      //caller method here
      if(fish.validate(n1,n2,n3))
      res = 'P= ' + fish.power(n1, n2).toString() + '. F='+fish.factorial(n3).toString();
      else res = "Invalid Input(s)";
    });
  }
  void _reset(){
    setState(() {
      res = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text(res,
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.purpleAccent,
              backgroundColor: Colors.black12,
              fontFamily: 'verdana', fontSize: 20.0),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter power base',
                ),
                keyboardType: TextInputType.number,
                onChanged: (text){
                  t1 = text;
                  n1 = int.parse(t1);
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter exponent',
                ),
                keyboardType: TextInputType.number,
                onChanged: (text){
                  t2 = text;
                  n2 = int.parse(t2);
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter number for factorial',
                ),
                keyboardType: TextInputType.number,
                onChanged: (text){
                  t3 = text;
                  n3 = int.parse(t3);
                },
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: _incrementCounter,
                    child: Text('Find them'),
                  ),
                  RaisedButton(
                    onPressed: _reset,
                  child: Text('Reset'))
                ],
              )
            ],
          )
        ),
      ) ,
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Calculations{
  int n1;
  int n2;
  int n3;
  String output = '';
  Calculations({this.n1,this.n2,this.n3});

  double power(n1,n2){
    if(n2 == 0)
      return 1;
    return n1 * power(n1,n2-1);
  }

  int factorial(n3){
    if(n3 == 0){
      return 1;
    }
    return n3 * factorial(n3-1);
  }

  bool validate(n1,n2,n3){
    if(n1<0 || n2 < 0 || n3 < 0){
      return false;
    }
    else
      return true;
  }


}
