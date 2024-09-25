import 'package:flutter/material.dart';
import 'package:new_profile_page_flutter/main.dart';
import 'profilePage.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('img/background.jpeg'),
          fit:BoxFit.cover)
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('img/fotoRifa.jpeg'),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Rifa Fachri Ramadhan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),

                SizedBox(
                  width: 600,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.yellow.shade300,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "About Me",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Rifa Fachri Ramadhan is a student who is seriously pursuing software development as Backend Developer at Wikrama Vocational School.",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width:600,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "History",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "2021-2025",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            "School at SMK Wikrama Bogor",
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "January 2024 - Juni 2024",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            "Intership at Pt.Desacode Transformasi Teknologi",
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                    width: 600,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Skill",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                    radius:50.0 ,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('img/html.png')
                                ),
                                SizedBox(width: 8.0),

                                Text(
                                "HTML",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),],
                            ),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                    radius:50.0 ,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('img/css.png')
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "CSS",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),],
                            ),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius:50.0 ,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('img/java.png')
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "Java",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),],
                            ),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                    radius:50.0 ,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('img/javascript.png')
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "Javascript",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                    radius:50.0 ,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('img/tailwind.png')
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "tailwind",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the children
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        _launchURL("https://github.com/rifafachrir");
                      },
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('img/github.png'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    InkWell(
                      onTap: () {
                        _launchURL("https://www.linkedin.com/");
                      },
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('img/linkedin.png'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
