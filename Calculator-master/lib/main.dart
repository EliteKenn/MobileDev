import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator'),
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
  int _counter = 0;

  double n1;
  double n2;
  String _output = '',_output2='',_output3='',_output4,_nyc='';
  String sp = ',' + ' ', t1='',t2='';
  Calculate calc = Calculate();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      _output =  calc.sum(n1,n2);
      _output2 = calc.multiply(n1,n2);
      _output3 = calc.divide(n1,n2);
      _output4 = calc.avg(n1,n2);
      _nyc = _output+ sp + _output2.toLowerCase() + sp +_output3.toLowerCase() + sp + _output4.toLowerCase();

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
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter First Number'
            ),
              onChanged: (text){
              t1=text;
              n1 = double.parse(t1);
              },
            ),
            SizedBox(height:20.0,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number'
              ),
              onChanged: (text){
                t2=text;
                n2 = double.parse(t2);
              },
            ),
            Text(_nyc, style: TextStyle(
              color: Colors.yellow,
              backgroundColor: Colors.black54,
              fontSize:16.0,
              fontWeight: FontWeight.w300
            ),),
            FlatButton(
              child: Text('Calculate'),
              onPressed:  _incrementCounter,
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class Calculate{

  double num1,num2,result = 0;

  Calculate({this.num1,this.num2});

  String sum(double num1, double num2){
    result = num1 + num2;
    return "The summation is: " +result.toString();
  }

  String multiply(double num1, double num2){
    result = num1 * num2;
    String product = "This product is: ";
    return "The product is: " + result.toString();
  }

  String divide(double num1,double num2){
    String a;
    result = num1 / num2;
    return "The division is: " + result.toString();
  }

  String avg(double num1, double num2){
    result = (num1+num2)/2;
    return 'Average: ' + result.toString();
  }
}

