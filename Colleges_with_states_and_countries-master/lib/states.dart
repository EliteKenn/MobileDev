import 'package:flutter/material.dart';
import 'countries.dart';
class Oklahoma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Oklahoma,USA'),),
          body: Column(
            children: <Widget>[
              Text("Oklahoma is a state in the South Central region of the United States,"
                  "bordered by the state of Texas on the south and west, Kansas on the north, "
                  "Missouri on the northeast, Arkansas on the east, New Mexico on the west, "
                  "and Colorado on the northwest. It is the 20th-most extensive and the 28th-most populous of the 50 United States. "
                  "Its residents are known as Oklahomans (or colloquially, "'Okies'"), and its capital and largest city is Oklahoma City. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class Kansas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Kansas,USA'),),
          body: Column(
            children: <Widget>[
              Text("Kansas is a U.S. state in the Midwestern United States. Its capital is Topeka and its largest city is Wichita, with its most populated county and largest employment center being Johnson County. Kansas is bordered by Nebraska on the north; Missouri on the east; Oklahoma on the south; and Colorado on the west "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class Georgia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Georgia,USA'),),
          body: Column(
            children: <Widget>[
              Text("Georgia is a southeastern U.S. state whose terrain spans coastal beaches, farmland and mountains. Capital city Atlanta is home of the Georgia Aquarium and the Martin Luther King Jr. National Historic Site, dedicated to the African-American leader’s life and times. The city of Savannah is famed for its 18th- and 19th-century architecture and leafy public squares. Augusta hosts the Masters golf tournament"),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class Massachusetts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Massachusetts,USA'),),
          body: Column(
            children: <Widget>[
              Text("Massachusetts, officially known as the Commonwealth of Massachusetts, is the most populous state in the New England region of the northeastern United States "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class NewYork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('New York, USA'),),
          body: Column(
            children: <Widget>[
              Text("New York (NY or N.Y.) is a state located in the Northeastern United States. New York was one of the original thirteen colonies that formed the United States. With an estimated 19.45 million residents in 2019,[6] it is the fourth most populous state. In order to distinguish the state from its city with the same name, it is sometimes referred to as New York State (NYS)"),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class Texas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Texas, USA'),),
          body: Column(
            children: <Widget>[
              Text("Texas is the second largest state in the United States by area (after Alaska) and population (after California). Located in the South Central region, Texas shares borders with the states of Louisiana to the east, Arkansas to the northeast, Oklahoma to the north, New Mexico to the west, and the Mexican states of Chihuahua, Coahuila, Nuevo León, and Tamaulipas to the southwest, and has a coastline with the Gulf of Mexico to the southeast. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class Rhode_Island extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Rhode_Island, USA'),),
          body: Column(
            children: <Widget>[
              Text("Rhode Island, a U.S. state in New England, is known for sandy shores and seaside Colonial towns. It's home to several large cities, including Newport, which is famed for sailing and Gilded Age mansions, such as The Breakers. Providence, its capital, is home to Brown University, green Roger Williams Park, landscaped Waterplace Park and Riverwalk, with the famed WaterFire art installation."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class Louisiana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Louisiana, USA'),),
          body: Column(
            children: <Widget>[
              Text("Louisiana is a southeastern U.S. state on the Gulf of Mexico. Its history as a melting pot of French, African, American and French-Canadian cultures is reflected in its Creole and Cajun cultures. The largest city, New Orleans, is known for its colonial-era French Quarter, raucous Mardi Gras festival, jazz music, Renaissance-style St. Louis Cathedral and wartime exhibits at the huge National WWII Museum. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
class North_Carolina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('North Carolina, USA'),),
          body: Column(
            children: <Widget>[
              Text("North Carolina is a U.S. state located in the southeastern region of the United States. North Carolina is the 28th largest and 9th-most populous of the 50 United States. It is bordered by Virginia to the north, the Atlantic Ocean to the east, Georgia and South Carolina to the south, and Tennessee to the west. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('USA'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => USA(),
                  ))
              )
          ],
          )
      ),
    );
  }
}
