import 'package:flutter/material.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
var _launchURL="";
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "images/img_building.webp",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                _launchURL('https://sahilvaghasiya.netlify.app/');
              },
              child: Text(
                "sahilvaghasiya.netlify.app",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "News from around the\n      world for you",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Best time to read, take your time to reada little more of this World",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 5.0,
                  child: InkWell(
                    onTap: () {
                      // Navigate to the Home page when "Get Started" is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500),
                        ))),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  // Function to launch URL
  void _launchURL(String url) async {
    try {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        enableJavaScript: true,
        universalLinksOnly: true,
      );
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
