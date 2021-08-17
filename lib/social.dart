import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtbankapp/main.dart';
import 'package:gtbankapp/btmnavigation.dart';
import 'package:gtbankapp/gtlocate.dart';
import 'package:gtbankapp/setting.dart';
import 'package:gtbankapp/facebook.dart';
import 'package:gtbankapp/twitter.dart';
import 'package:gtbankapp/instagram.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/social': (context) => Social(),
          '/gtlocate': (context) => Gtlocate(),
          '/setting': (context) => Setting(),
          '/facebook': (context) => Facebook(),
          '/twitter': (context) => Twitter(),
          '/instagram': (context) => Instagram(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
        },
      ),
    );

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new Setting(),
                  ),
                );
              },
              child: Icon(Icons.settings),
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange[600],
        elevation: 0,
        leading: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/', (Route<dynamic> route) => false);
                  setState(
                    () {
                      currentIndex = 1;
                    },
                  );
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
        centerTitle: true,
        title: Center(
          child: Text(
            "Socials",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.deepOrange[600],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          'News',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.deepOrange[600]),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 46,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => new Facebook(),
                            ),
                          );
                        },
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 46,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => new Twitter(),
                            ),
                          );
                        },
                        child: Text(
                          'Twitter',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 46,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => new Instagram(),
                            ),
                          );
                        },
                        child: Text(
                          'Instagram',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Btmnavigation(currentIndex),
    );
  }
}
