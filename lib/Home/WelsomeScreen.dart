import 'package:flutter/material.dart';
import 'package:snape_application/authScreen/Login/login.dart';
import 'package:snape_application/authScreen/signup/register.dart';

class WelcomeSreen extends StatefulWidget {
  const WelcomeSreen({Key? key}) : super(key: key);

  @override
  _WelcomeSreenState createState() => _WelcomeSreenState();
}

class _WelcomeSreenState extends State<WelcomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: 428,
        height: 926,
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fourth.jpeg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            new Container(
              width: 230,
              height: 60,
              decoration: new BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/snape.png'), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: new Text("Media On Demand ",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xffffffff),
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            SizedBox(
              // height: 300,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  width: 150,
                  height: 53,
                  decoration: new BoxDecoration(
                    color: Color(0xffec1a25),
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x7f000000),
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          spreadRadius: 0)
                    ],
                  ),
                ),
                new Container(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: 150,
                    height: 53,
                    decoration: new BoxDecoration(
                      color: Color(0xffec1a25),
                      borderRadius: BorderRadius.circular(17),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x7f000000),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0)
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}


// https://hrdzvfeoiizjnxdfjahu.supabase.co


// const SUPABASE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJvbGUiOiJhbm9uIiwiaWF0IjoxNjQzMTcyOTU3LCJleHAiOjE5NTg3NDg5NTd9.aN-8lxsNvrNGh4lM5Mv5gwM0EAtIl_h1EFb_ADa_DMM'

