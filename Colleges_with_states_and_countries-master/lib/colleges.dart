
import 'package:flutter/material.dart';
import 'package:ios_colleges_state_countries/main.dart';
import 'cities.dart';

class OSU extends Colleges {
  @override
  OSU() :
      super(
        collegename: "Oklahoma State University",
        collegetext: "Tuition costs around 12000 for its Computer Science program"
            "located in Stillwater",
        cityText : 'Stillwater',
        cityWidget: StillWater()
      );
  }

class OU extends Colleges {
  @override
  OU() :
        super(
          collegename: "The University of Oklahoma",
          collegetext: "The University of Oklahoma is a public research university in Norman, Oklahoma. "
              "Founded in 1890, it had existed in Oklahoma Territory near Indian Territory for 17 years before the two became the state of Oklahoma. "
              "In Fall 2018 the university had 31,702 students enrolled, most at its main campus in Norman.",
          cityText : 'Norman',
          cityWidget: Norman()
      );
}

class WSU extends Colleges {
  @override
  WSU() :
        super(
          collegename: "Wichita State University",
          collegetext: "Wichita State University is a public research university in Wichita, Kansas, United States, "
              "and governed by the Kansas Board of Regents. "
              "Wichita State University offers more than 60 undergraduate degree programs in more than 200 areas of study in six colleges",
          cityText : 'Wichita',
          cityWidget: Wichita()
      );
}

class KSU extends Colleges {
  @override
  KSU() :
        super(
          collegename: "Kennesaw State University",
          collegetext: "Kennesaw State University is a public university in the U.S. state of Georgia with two primary campuses, one in Kennesaw and the other in Marietta. The school was founded in 1963 by the Georgia Board of Regents using local bonds and a federal grant during a time of major Georgia economic expansion after World War II",
          cityText : 'Kennesaw',
          cityWidget: Kennesaw()
      );
}

class MIT extends Colleges {
  @override
  MIT() :
        super(
          collegename: "Massachusetts Institute of Technology",
          collegetext: "Massachusetts Institute of Technology is a private research university in Cambridge, Massachusetts. The Institute is a land-grant, sea-grant, and space-grant university, with an urban campus that extends more than a mile alongside the Charles River.",
          cityText : 'Cambridge',
          cityWidget: Cambridge()
      );
}

class CUNY extends Colleges {
  @override
  CUNY() :
        super(
          collegename: "City University of New York",
          collegetext: "The City University of New York (CUNY /ˈkjuːni/) is the public university system of New York City. It is the largest urban university system in the United States, comprising 26 campuses: eleven senior colleges, seven community colleges, one undergraduate honors college, and seven post-graduate institutions. While its constituent colleges date back as far as 1847, the City University was established in 1961. The university enrolls more than 275,000 students, and counts thirteen Nobel Prize winners and twenty-four MacArthur Fellows among its alumni.",
          cityText : 'New York',
          cityWidget: NewYorkCity()
      );
}

class NYU extends Colleges {
  @override
  NYU() :
        super(
          collegename: "New York University",
          collegetext: "New York University is a private research university based in New York City. Founded in 1831, NYU's historical campus is in Greenwich Village, Lower Manhattan.",
          cityText : 'New York',
          cityWidget: NewYorkCity()
      );
}
class OPSU extends Colleges {
  @override
  OPSU() :
        super(
          collegename: "Oklahoma Panhandle State University",
          collegetext: "Oklahoma Panhandle State University is a public college in Goodwell, Oklahoma. OPSU is a baccalaureate degree-granting institution. General governance of the institution is provided by the Board of Regents of the Oklahoma Agricultural and Mechanical Colleges",
          cityText : 'Goodwell',
          cityWidget: Goodwell()
      );
}

class RICE extends Colleges {
  @override
  RICE() :
        super(
          collegename: "Rice University",
          collegetext: "William Marsh Rice University, commonly known as Rice University, is a private research university in Houston, Texas. The university is situated on a 300-acre campus near the Houston Museum District and is adjacent to the Texas Medical Center",
          cityText : 'Houston',
          cityWidget: Houston()
      );
}
class BROWN extends Colleges {
  @override
  BROWN() :
        super(
          collegename: "Brown University",
          collegetext: "Brown University is a private Ivy League research university in Providence, Rhode Island. "
              "Founded in 1764 as the College in the English Colony of Rhode Island and Providence Plantations, "
              "it is the seventh-oldest institution of higher education in the United States and one of the nine colonial colleges chartered before the American Revolution",
          cityText : 'Providence',
          cityWidget: Providence()
      );
}
class LSU extends Colleges {
  @override
  LSU() :
        super(
          collegename: "Louisiana State University",
          collegetext: "Louisiana State University is a public research university in Baton Rouge, Louisiana. The university was founded in 1853 in what is now known as Pineville, Louisiana, under the name Louisiana State Seminary of Learning & Military Academy.",
          cityText : 'Baton Rouge',
          cityWidget: Baton_Rouge()
      );
}
class DUKE extends Colleges {
  @override
  DUKE() :
        super(
          collegename: "DUKE University",
          collegetext: "Duke University is a private research university in Durham, North Carolina. Founded by Methodists and Quakers in the present-day town of Trinity in 1838, the school moved to Durham in 1892.",
          cityText : 'Durham',
          cityWidget: Durham()
      );
}
class UTULSA extends Colleges {
  @override
  UTULSA() :
        super(
          collegename: "University of Tulsa",
          collegetext: "The University of Tulsa (TU) is a private research university in Tulsa, Oklahoma.[4] It has an historic affiliation with the Presbyterian Church and the campus architectural style is predominantly Collegiate Gothic.",
          cityText : 'Tulsa',
          cityWidget: TU()
      );
}
class BC extends Colleges {
  @override
  BC() :
        super(
          collegename: "Boston College",
          collegetext: "Boston College is a private Jesuit research university in Boston and Newton, Massachusetts. It was founded in 1863 and although it is classified among ",
          cityText : 'Boston',
          cityWidget: Boston()
      );
}

class SUNY extends Colleges {
  @override
  SUNY() :
        super(
          collegename: "State University of New York",
          collegetext: "The State University of New York is a system of public institutions of higher education in New York",
          cityText : 'New York City',
          cityWidget: NewYorkCity()
      );
}


//KENNEDY NWOKE

class Colleges extends StatelessWidget {
  @override
  final String collegename;
  final String collegetext;
  final String cityText;
  final Widget cityWidget;

  Colleges(
      {this.collegename, this.collegetext, this.cityText, this.cityWidget});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text(collegename),),
          body: Column(
            children: <Widget>[
              Text(collegetext),
              FlatButton(child: Text('Back'),
                onPressed: () => Navigator.pop(context),),
              FlatButton(child: Text(cityText),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => cityWidget,
                  ))
              )          ],
          )
      ),
    );;
  }
}


