import 'package:flutter/material.dart';

import 'banner2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        iconSize: 60,
        icon: Icon(Icons.next_plan),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Banner2(),
            ),
          );
        },
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/first.jpeg'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  // margin: EdgeInsets.only(top: 120),
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 65,
                    width: 65,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  // margin: EdgeInsets.only(top: 150),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "ON DEMAND",
                      style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "PHOTOGRAPHY",
                    style: TextStyle(
                        fontSize: 33.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  right: 8.0,
                  // bottom: 8.0,
                  left: 8.0,
                ),
                child: Container(
                  // margin:,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Get a Certified Photographer",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  right: 8.0,
                  bottom: 50.0,
                  left: 8.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Quick and Easy, Anywhere!",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
