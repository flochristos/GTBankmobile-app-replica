import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtbankapp/main.dart';
import 'package:gtbankapp/btmnavigation.dart';
import 'package:gtbankapp/gtlocate.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/gtlocate': (context) => Gtlocate(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
        },
      ),
    );

class Newreport extends StatefulWidget {
  @override
  _NewreportState createState() => _NewreportState();
}

class _NewreportState extends State<Newreport> {
  File _image;
  final picker = ImagePicker();
  Future _getImage() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      }
    });
  }

  Future _getcamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      }
    });
  }
  //dialogbox for type of file to be selected

  _displayDialog(BuildContext context) async {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.white70.withOpacity(1),
      transitionDuration: Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Container(
          alignment: Alignment.center,
          child: Container(
            height: 220,
            width: 200,
            child: SizedBox.expand(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Add Media',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 10, left: 10, bottom: 30),
                    child: Text(
                      'Choose media type',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _getImage();
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightGreen[900]),
                            child: Icon(
                              Icons.image,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _getcamera();
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepOrange),
                            child: Icon(
                              Icons.camera,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: Icon(
                            Icons.video_call,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 50,
                        right: 5,
                      ),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.deepOrange,
                            fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.1, 1),
                      blurRadius: 2.0)
                ]),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

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
                  Navigator.pop(context);
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
              margin: EdgeInsets.only(bottom: 50),
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 30),
              color: Colors.deepOrange[600],
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Text(
                'New Report',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.only(top: 0, bottom: 50),
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    child: _image != null
                        ? Image.file(_image)
                        : Text('No Selected Image'),
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Title',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                    ),
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Your notes',
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 120,
                      top: 10,
                    ),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        //_getImagemi();
                        _displayDialog(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle,
                            size: 20,
                            color: Colors.deepOrange,
                          ),
                          Text(
                            '  ADD MEDIA',
                            style: TextStyle(
                                fontSize: 14, color: Colors.deepOrange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              color: Colors.white,
              child: TextButton(
                onPressed: null,
                child: Text('Submit', style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
