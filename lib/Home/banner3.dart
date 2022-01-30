import 'package:flutter/material.dart';
import 'package:snape_application/Home/WelsomeScreen.dart';

import 'banner2.dart';

class Banner3 extends StatefulWidget {
  const Banner3({Key? key}) : super(key: key);

  @override
  _Banner3State createState() => _Banner3State();
}

class _Banner3State extends State<Banner3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: IconButton(
        iconSize: 60,
        icon: Icon(Icons.next_plan),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomeSreen(),
            ),
          );
        },
      ),
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          image: DecorationImage(
            image: AssetImage('assets/third.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 65,
                    width: 65,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Payment",
                      style: TextStyle(
                          fontSize: 42.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Protected",
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Leave all the Bookings, Payments\nsnd delivery to us, You focus on\nyour enjoyment!",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   child: Center(
            //     child: Text(
            //       "snd delivery to us, You focus on",
            //       style: TextStyle(
            //           fontSize: 25.0,
            //           color: Colors.white,
            //           fontWeight: FontWeight.w800),
            //     ),
            //   ),
            // ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   child: Center(
            //     child: Text(
            //       "your enjoyment!",
            //       style: TextStyle(
            //           fontSize: 25.0,
            //           color: Colors.white,
            //           fontWeight: FontWeight.w800),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
