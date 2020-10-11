import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "PageTransitionType",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Hero(
            tag: "name",
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
              ],
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
      appBar: AppBar(
        title: Text("PageTransitionType"),
        backgroundColor: Colors.black,
      ),
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
