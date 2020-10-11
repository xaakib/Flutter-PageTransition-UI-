import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  Future getdatdaFromfirebase() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn =
        await firestore.collection("ImageCategories").getDocuments();

    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "This is Firestore Cloude",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: "name",
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "fade second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "leftToRight second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "rightToLeft second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.scale,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "scale second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.size,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "size second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rotate,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "rotate second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "rightToLeftWithFade second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRightWithFade,
                  child: SecoundPage(),
                ),
              );
            },
            child: Text(
              "leftToRightWithFade second page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Hero(
          tag: "name",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
