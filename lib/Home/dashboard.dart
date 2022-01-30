import 'package:flutter/material.dart';
import 'package:snape_application/GlobalState/GlobalState.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Dashboard"),),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               margin: EdgeInsets.symmetric(vertical: 50),
              child: Text("Welcome to Dashboard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
             Text("Email : ${GlobalState.responseModel!.user!.email}"),
             Text("Last Login :  ${GlobalState.responseModel!.user!.lastSignInAt}"),
             

           ],
         ),
       ),
    );
  }
}
