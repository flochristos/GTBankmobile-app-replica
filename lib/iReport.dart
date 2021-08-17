import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtbankapp/main.dart';
import 'package:gtbankapp/btmnavigation.dart';
import 'package:gtbankapp/gtlocate.dart';
import 'package:gtbankapp/newreport.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/gtlocate': (context) => Gtlocate(),
          '/newreport': (context) => Newreport(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
        },
      ),
    );

class Ireport extends StatefulWidget {
  @override
  _IreportState createState() => _IreportState();
}

class _IreportState extends State<Ireport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          "iReport",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 50),
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 30),
              color: Colors.deepOrange[600],
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Text(
                '"Our Service through \n your eyes..."',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
                height: 300,
                margin: EdgeInsets.only(top: 0, bottom: 50),
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => new Newreport(),
                          ),
                        );
                      },
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.2,
                              offset: Offset(0.1, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'SUBMIT A NEW REPORT',
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.deepOrange[200],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.2,
                              offset: Offset(0.1, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'VIEW PAST REPORTS',
                                style: TextStyle(color: Colors.green[900]),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.green[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: Btmnavigation(currentIndex),
    );
  }
}
