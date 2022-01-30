import 'package:flutter/material.dart';

import 'package:snape_application/Auth%20Component/service.dart';
import 'package:snape_application/GlobalState/GlobalState.dart';
import 'package:snape_application/Home/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    Email = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final AuthNotifier authnotifier = Provider.of(context, listen: false);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 1,
            child: new Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 150.0),
                        child: new Text(
                          "Sign In here!",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xfff2f2f2),
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 10.0),
                      //   child: Text(
                      //     'Before you join, give us a chance to\n know you more.',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       color: Color(0xfff2f2f2),
                      //       fontSize: 21,
                      //       fontFamily: 'Roboto',
                      //       fontWeight: FontWeight.w300,
                      //     ),
                      //   ),
                      // ),

                      FormField("Email  ", "abc@gmail.com ", Email),
                      SizedBox(
                        width: 240,
                        height: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      FormField("Password", "Password", password),
                      SizedBox(
                        width: 240,
                        height: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(
                        height: 30.0,
                      ),
                      new Container(
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();

                            String _email = Email.text;
                            String _password = password.text;

                            if (_email.isNotEmpty && _password.isNotEmpty) {
                              AuthNotifier().authService.signIn(
                                  context: context,
                                  email: _email,
                                  password: _password);

                              // print(GlobalState.responseModel != null);
                              if (GlobalState.responseModel != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Sucessfully Logged In!"),
                                  ),
                                );
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ),
                                );
                              } else {
                                AuthNotifier().authService.signIn(
                                    context: context,
                                    email: _email,
                                    password: _password);
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Please! fill fields")));
                            }
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        width: 230,
                        height: 50,
                        decoration: new BoxDecoration(
                          color: Color(0xfff9b91b),
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
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: new BoxDecoration(
                  color: Colors.red,
                )),
          ),
          Positioned.fill(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget FormField(String title, String hint, TextEditingController ctrl) {
    return Card(
      shadowColor: Colors.red,
      elevation: 0.0,
      color: Colors.red,
      margin: EdgeInsets.symmetric(
        vertical: 0.001,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 80,
          // color: Colors.white,
          child: Center(
            child: Text(
              title,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        title: TextFormField(
          cursorColor: Colors.white,
          controller: ctrl,
          decoration: InputDecoration(
            fillColor: Colors.red,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabled: true,
            filled: true,
            isCollapsed: false,
            isDense: false,
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
