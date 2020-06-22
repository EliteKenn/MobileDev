import 'package:flutter/material.dart';
import 'package:ios_colleges_state_countries/main.dart';

class USA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Oklahoma State University'),),
          body: Column(
            children: <Widget>[
              Text("The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Home'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => MyApp(),
                  ))
              )
            ],
          )
      ),
    );
  }
}
