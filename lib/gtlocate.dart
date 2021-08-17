import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gtbankapp/main.dart';
import 'package:gtbankapp/btmnavigation.dart';
import 'package:gtbankapp/direction.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/direction': (context) => Direction(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
        },
      ),
    );

class Gtlocate extends StatefulWidget {
  @override
  _GtlocateState createState() => _GtlocateState();
}

class _GtlocateState extends State<Gtlocate> {
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
          "ATM & Branch Locator",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [],
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/loc.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 18),
                    child: TextField(
                      style: TextStyle(fontSize: 12),
                      enableSuggestions: true,
                      decoration: InputDecoration(
                        hintText: 'Osupa, Nigeria',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        contentPadding: EdgeInsets.only(left: 10),
                        focusColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      onPressed: () {},
                      child: Text(
                        'Find',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                      color: Colors.deepOrange,
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Five(5) Closest Branches/ATM Locations.',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.idCard,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          'Deposit ATM',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.waveSquare,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          'Withdrawal\nATM',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.home,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          'Branch',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.globe,
                          size: 10,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          'e-Branch',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //e-branch lautech first box
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
              padding: EdgeInsets.all(12),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.1, 1),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new Direction(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'E-branch - Lautech',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'LADOKE AKINTOLA UNIVERSITY',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              '5.63km',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    Icon(
                                      Icons.wallet_giftcard,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.handHoldingUsd,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_membership,
                                      size: 15,
                                      color: Colors.deepOrange,
                                    ),
                                    Text('  '),
                                  ],
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
            ),
            //ogbomoso second box
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              padding: EdgeInsets.all(12),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.1, 1),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new Direction(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Ogbomoso',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'IBAPON AREA, OGBOMOSHO',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              '5.63km',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    Icon(
                                      Icons.wallet_giftcard,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.handHoldingUsd,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_membership,
                                      size: 15,
                                      color: Colors.deepOrange,
                                    ),
                                    Text('  '),
                                  ],
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
            ),
            //Oyo third box
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              padding: EdgeInsets.all(12),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.1, 1),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new Direction(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Oyo',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Ibadan - Ogbomoso Express Road, Owode, Oyo Town, Oyo State, Nigeria',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              '5.63km',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    Icon(
                                      Icons.wallet_giftcard,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.handHoldingUsd,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_membership,
                                      size: 15,
                                      color: Colors.deepOrange,
                                    ),
                                    Text('  '),
                                  ],
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
            ),
            //Ilorin fourth box
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              padding: EdgeInsets.all(12),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.1, 1),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new Direction(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Ilorin',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '1, Wahab Folawiyo Road, Ilorin, Kwara State, Nigeria',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              '5.63km',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 10),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    Icon(
                                      Icons.wallet_giftcard,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.handHoldingUsd,
                                      size: 15,
                                      color: Colors.deepOrange[200],
                                    ),
                                    Text('  '),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_membership,
                                      size: 15,
                                      color: Colors.deepOrange,
                                    ),
                                    Text('  '),
                                  ],
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: Btmnavigation(currentIndex),
    );
  }
}
