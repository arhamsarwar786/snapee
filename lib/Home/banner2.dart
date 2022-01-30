import 'package:flutter/material.dart';
import 'banner3.dart';

class Banner2 extends StatefulWidget {
  const Banner2({Key? key}) : super(key: key);

  @override
  _Banner2State createState() => _Banner2State();
}

class _Banner2State extends State<Banner2> {
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
              builder: (context) => Banner3(),
            ),
          );
        },
      ),
      body: Container(
        height: size.height,
        decoration: BoxDecoration(          
          image: DecorationImage(            
            
              image: AssetImage('assets/second.jpeg',), fit: BoxFit.cover,),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 260,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Birthday",
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
                    "Snaps",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/logo.png',
                  height: 55,
                  width: 55,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Book all the Snaps and edits",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "on us",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
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
