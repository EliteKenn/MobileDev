import 'package:flutter/material.dart';
import 'states.dart';
class StillWater extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Oklahoma State University'),),
          body: Column(
            children: <Widget>[
              Text("Stillwater is a city in north-central Oklahoma at the intersection of US-177 and State Highway 51. It is the county seat of Payne County, Oklahoma, United States. As of the 2010 census, the city population was 45,688, "
                  "making it the tenth-largest city in Oklahoma. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Oklahoma'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Oklahoma(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Goodwell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Goodwell, Oklahoma'),),
          body: Column(
            children: <Widget>[
              Text("Goodwell is a town in Texas County, Oklahoma, United States. The population was 1,293 at the 2010 census. Goodwell is home of Oklahoma Panhandle State University. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Oklahoma'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Oklahoma(),
                  ))

              ),          ],
          )
      ),
    );
  }
}

class Norman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Norman, Oklahoma'),),
          body: Column(
            children: <Widget>[
              Text("Norman is a city in the U.S. state of Oklahoma located 20 miles south of downtown Oklahoma City. As the county seat of Cleveland County and a part of the Oklahoma City metropolitan area, its population was 110,925 at the 2010 census."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Oklahoma'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Oklahoma(),
                  ))
              ),          ],
          )
      ),
    );
  }
}
class Wichita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Wichita, Kansas'),),
          body: Column(
            children: <Widget>[
              Text("Wichita is a city in south-central Kansas. Exploration Place features hands-on science exhibits and Kansas in Miniature, a display of animated models depicting 1950s Kansas. Old Cowtown Museum recreates 19th-century life with old buildings and costumed guides. Themed gardens at Botanica Wichita include a wildflower meadow and a Chinese garden. The Museum of World Treasures has Egyptian mummies and a T. rex skeleton."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Kansas'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Kansas(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Kennesaw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Kennesaw, Georgia'),),
          body: Column(
            children: <Widget>[
              Text("Kennesaw is a city northwest of Atlanta, Georgia. The Southern Museum of Civil War and Locomotive History displays weapons and a steam locomotive. To the southeast, Kennesaw Mountain National Battlefield Park has Civil War monuments and trails. Swift-Cantrell Park includes a skate park and playgrounds. To the northwest, forested Red Top Mountain State Park juts into Lake Allatoona, and offers trails and a beach. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Georgia'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Georgia(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Cambridge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Cambridge, Massachusetts'),),
          body: Column(
            children: <Widget>[
              Text("Cambridge is a city in Massachusetts, across the Charles River from Boston. It’s home to Harvard University. At the heart of campus, grassy Harvard Yard is anchored by the neoclassical Widener Library. Harvard Square has cafes, bars and bookstores. The Harvard Art Museums comprise the Fogg, Busch-Reisinger and Arthur M. Sackler collections. Southeast is the prestigious Massachusetts Institute of Technology (MIT)."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Massachusetts'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Massachusetts(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class NewYorkCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('New York'),),
          body: Column(
            children: <Widget>[
              Text("New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('New York'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => NewYork(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Houston extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Houston, Texas'),),
          body: Column(
            children: <Widget>[
              Text("Houston is a large metropolis in Texas, extending to Galveston Bay. It’s closely linked with the Space Center Houston, the coastal visitor center at NASA’s astronaut training and flight control complex. The city’s relatively compact Downtown includes the Theater District, home to the renowned Houston Grand Opera, and the Historic District, with 19th-century architecture and upscale restaurants"),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Texas'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Texas(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Providence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Providence, Rhode Island'),),
          body: Column(
            children: <Widget>[
              Text("Providence is the capital city of the U.S. state of Rhode Island. It's home to Brown University and the Rhode Island School of Design, whose RISD Museum displays American art and silver. Nearby, 18th- and 19th-century homes line the streets of College Hill. Waterplace Park is the backdrop for the WaterFire art installation, which lights up the surrounding tidal basin most nights in the summer and for special events"),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Rhode Island'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Rhode_Island(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Baton_Rouge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Baton Rogue, Louisiana'),),
          body: Column(
            children: <Widget>[
              Text("Baton Rouge is a city on the Mississippi River, and the capital of Louisiana. Antebellum landmarks include the castle-like Old Louisiana State Capitol, now a museum, and Magnolia Mound Plantation, with its French Creole house. LSU Rural Life Museum is a complex of refurbished buildings illustrating 18th- and 19th-century life. On the river, the USS Kidd is a retired WWII destroyer that is now a museum."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Louisiana'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Louisiana(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Durham extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Durham, North Carolina'),),
          body: Column(
            children: <Widget>[
              Text("Durham is a city in North Carolina. It's part of the Research Triangle Region, known for its technology companies and scholarly institutions. On the Duke University campus are the neo-Gothic Duke Chapel and the Nasher Museum of Art, with work by contemporary artists like Christian Marclay and Ai Weiwei. The Museum of Life + Science has hands-on exhibits, a butterfly house and wildlife habitats for bears and lemurs. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('North Carolina'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => North_Carolina(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class TU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Tulsa, Oklahoma'),),
          body: Column(
            children: <Widget>[
              Text("Tulsa is a city on the Arkansas River, in the U.S. state of Oklahoma. It’s known for its art deco architecture, mostly in the central Deco District. Landmarks like the Philcade and Philtower buildings reflect a 20th-century construction boom fueled by the prosperous local oil industry. The Philbrook Museum of Art is housed in an Italianate villa that was once the home of a local oil magnate. "),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Oklahoma'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Oklahoma(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
class Boston extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Boston, Massachusetts'),),
          body: Column(
            children: <Widget>[
              Text("Boston is the capital and most populous city of the Commonwealth of Massachusetts in the United States, and the 21st most populous city in the United States. The city proper covers 49 square miles with an estimated population of 694,583 in 2018, also making it the most populous city in New England."),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text('Massachusetts'),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Massachusetts(),
                  ))

              ),          ],
          )
      ),
    );
  }
}
