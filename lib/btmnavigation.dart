import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtbankapp/main.dart';
import 'package:gtbankapp/social.dart';
import 'package:gtbankapp/gtlocate.dart';
import 'package:gtbankapp/iReport.dart';
import 'dart:ui';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/social': (context) => Social(),
          '/gtlocate': (context) => Gtlocate(),
          '/iReport': (context) => Ireport(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
        },
      ),
    );

class Btmnavigation extends StatefulWidget {
  Btmnavigation(int currentIndex);

  @override
  _BtmnavigationState createState() => _BtmnavigationState();
}

class _BtmnavigationState extends State<Btmnavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bottonleafroad.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        height: 35,
        child: Row(
          children: [
            Expanded(
              child: Container(
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hoverColor: Colors.deepOrange,
                  highlightColor: Colors.deepOrange,
                  color: currentIndex == 1
                      ? Colors.deepOrange
                      : Colors.transparent,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/', (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Banking',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hoverColor: Colors.deepOrange,
                  highlightColor: Colors.deepOrange,
                  color: currentIndex == 2
                      ? Colors.deepOrange
                      : Colors.transparent,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new Social(),
                      ),
                    );
                  },
                  child: Text(
                    'Social',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hoverColor: Colors.deepOrange,
                  highlightColor: Colors.deepOrange,
                  color: currentIndex == 3
                      ? Colors.deepOrange
                      : Colors.transparent,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/gtlocate', (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'GTLocate',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hoverColor: Colors.deepOrange,
                  highlightColor: Colors.deepOrange,
                  color: currentIndex == 4
                      ? Colors.deepOrange
                      : Colors.transparent,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      currentIndex = 4;
                    });
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new Ireport(),
                      ),
                    );
                  },
                  child: Text(
                    'iReport',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hoverColor: Colors.deepOrange,
                  highlightColor: Colors.deepOrange,
                  color: currentIndex == 5
                      ? Colors.deepOrange
                      : Colors.transparent,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      currentIndex = 5;
                    });
                  },
                  child: Text(
                    'GTTraffic',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
