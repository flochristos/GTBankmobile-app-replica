import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gtbankapp/social.dart';
import 'package:gtbankapp/btmnavigation.dart';

import 'gtlocate.dart';

int currentIndex = 1;
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GTWorld',
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/social': (context) => Social(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
          '/gtlocate': (context) => Gtlocate(),
        },
        color: Colors.deepOrange[900],
        theme: ThemeData(
          primarySwatch: Colors.orangeAccent[600],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[600],
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Hi Bolade'),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
            //width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange[600],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //first Acc
                    Container(
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.angleLeft,
                            size: 15,
                            color: Colors.white60,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepOrange[900],
                              border:
                                  Border.all(color: Colors.white60, width: 1),
                            ),
                            child: Text(
                              'Acc. 1 of 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 15,
                            color: Colors.white60,
                          ),
                        ],
                      ),
                    ),

                    //icon location
                    Container(
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('images/icon.png'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //first Acc
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'GT CREA8-E-SAVERS',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 10),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '0217306736',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //icon location
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: FaIcon(
                        FontAwesomeIcons.calendarDay,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: Text(
                    'N 10,620.22',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    'Book Balance: N 10,620.22',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: FaIcon(FontAwesomeIcons.search), onPressed: () {}),
                hintText: 'I want to pay...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(color: Colors.white60),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 32.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.commentsDollar,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Transfers',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.listAlt,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Payment',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.mobileAlt,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Buy Airtime & Data',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.ggCircle,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                                Text(
                                  'Transaction Details',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.moneyCheckAlt,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                                Text(
                                  'CashOut',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.userAlt,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                                Text(
                                  'My Account Manager',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.caretRight,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.handHoldingUsd,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Make Money',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.fileSignature,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Apply for Loans',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.save,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Grow your savings',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Second swipe for Icons

                Container(
                  margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.wallet,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Cards',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.fileCsv,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Cheques',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.fileArchive,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Account Statement',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.caretLeft,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.cashRegister,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                                Text(
                                  'CashExpress',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.phoneAlt,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                                Text(
                                  'Requests',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.moneyBillWave,
                                  color: Colors.deepOrange,
                                  size: 30,
                                ),
                                Text(
                                  'Sachet Banking',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.fileInvoiceDollar,
                                    color: Colors.deepOrange,
                                    size: 30,
                                  ),
                                  Text(
                                    'Bank Rates',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Btmnavigation(currentIndex),
    );
  }
}
