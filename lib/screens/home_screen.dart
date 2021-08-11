import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intershpt2/constant.dart';
import 'body_screen1.dart';
import 'body_screen2.dart';
import 'body_screen3.dart';
import 'registration_body_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget bodyFunction() {
    switch (selectScreenBody) {
      case 1:
        return BodyScreen1();
        break;
      case 2:
        return BodyScreenTwo();
        break;
      case 3:
        return BodyScreenThree();
        break;
      default:
        return RegistrationScreen();
    }
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appbarBackgroundColor,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_back,color: Colors.black,),
            ),
            titleSpacing: 80.0,
            title: Text('New Event',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,
                fontSize: 34.0,
                ),
            ),
            bottom: TabBar(
              tabs: [
                Container(
                  height: 40.0,

                  decoration: BoxDecoration(
                  ),
                  child: SvgPicture.asset("assets/progress_bar_$timelineNumber.svg"),
                ),
              ],
            ),
          ),
          body: bodyFunction(),
          
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.deepPurpleAccent,
            selectedItemColor: Colors.deepPurpleAccent,
            iconSize: 40.0,
              onTap: (int index) {
                setState(() {

                });
              },

              items: <BottomNavigationBarItem>[

                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: 'Home',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: 'Create New',
                ),
                //
                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: 'EAG',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: 'Profile',
                ),
              ],
          ),
        ),
      ),
    );
  }
}

