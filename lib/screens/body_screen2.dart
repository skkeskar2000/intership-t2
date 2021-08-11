import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intershpt2/constant.dart';
import 'home_screen.dart';

class BodyScreenTwo extends StatefulWidget {
  const BodyScreenTwo({Key? key}) : super(key: key);

  @override
  _BodyScreenTwoState createState() => _BodyScreenTwoState();
}

class _BodyScreenTwoState extends State<BodyScreenTwo> {

  String ?alertNotificationChoose;
  List<String> listAlertNotification = [
    'Email','Notification','minutes'
  ];

  String ?alertTimeChoose;
  List<String> listAlertTime = [
    'Minutes','Hours','days','weeks'
  ];

  bool _socialmediacheackbox = false;
  void socialMediaPopup(BuildContext context,String title) => showDialog(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        title:Text(title),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter URL',hintStyle: hintTextStyle,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _socialmediacheackbox,
                        onChanged: (bool? value) {
                          setState(() {
                            _socialmediacheackbox = value!;
                          });
                        },
                      ),
                      Text('Save URl for other event',style: textStyleBodyScreen3,),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){Navigator.pop(context);},
                        child: Text('cancel'),
                    ),
                    TextButton(
                      onPressed: (){Navigator.pop(context);},
                      child: Text('ok'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ReusedMainContainer(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'More about your Event!',
                  style: mainHeading,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Event Description',style: subHeadingBodyScreen3,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'More about event',hintStyle: hintTextStyle,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 40,
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                                "assets/Vector.svg"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 40,
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                                "assets/smile.svg"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 40,
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                                "assets/gallery.svg"),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Text Format',
                            style: textStyleBodyScreen3,
                          ),
                        ),
                        Text(
                          '0/2600',
                          style: hintTextStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            height: 60.0,
                            color: Color(0xFFF0F0F0),
                            child: Center(
                              child: Text('+ Add Image',
                                style: TextStyle(fontSize: 20.0,color: Colors.black45),),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      child: Text('Alerts',style: subHeadingBodyScreen3,),
                    ),

                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15.0,left: 5.0),
                          padding: EdgeInsets.all(5.0),
                          height: 30.0,
                          // width: 45.0,
                          color: Color(0xFFF0F0F0),
                          child: DropdownButton(
                            value: alertNotificationChoose,
                            hint: Text('Email',style: textStyleBodyScreen3),
                            items:listAlertNotification.map<DropdownMenuItem<String>>((String dayValue)
                            {
                              return DropdownMenuItem(
                                value: dayValue,
                                child: Text(dayValue,style: textStyleBodyScreen3),
                              );
                            }).toList(),
                            onChanged: (newValue){
                              setState(() {
                                alertNotificationChoose = newValue!.toString();
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0,left: 10.0),
                          padding: EdgeInsets.all(5.0),
                          height: 30.0,
                          color: Color(0xFFF0F0F0),
                          child: Text(' 30 ',style: textStyleBodyScreen3),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0,left: 10.0),
                          padding: EdgeInsets.all(5.0),
                          height: 30.0,
                          // width: 45.0,
                          color: Color(0xFFF0F0F0),
                          child: DropdownButton(
                            value: alertTimeChoose,
                            hint: Text('Minutes',style: textStyleBodyScreen3,),
                            items:listAlertTime.map<DropdownMenuItem<String>>((String dayValue)
                            {
                              return DropdownMenuItem(
                                value: dayValue,
                                child: Text(dayValue,style: textStyleBodyScreen3),
                              );
                            }).toList(),
                            onChanged: (newValue){
                              setState(() {
                                alertTimeChoose = newValue!.toString();
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0,left: 10.0),
                          // padding: EdgeInsets.all(5.0),
                          height: 30.0,
                          // color: Colors.black12,
                          child: Icon(Icons.clear_rounded),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text('Add alert',style: textStyleBodyScreen3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ReusedMainContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    'How to get in touch?',
                    style: mainHeading,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email id',style: subHeadingBodyScreen3,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'xyz@gmail.com',hintStyle: hintTextStyle,
                      ),
                    ),
                    SizedBox(height: 2.0,),
                    Text('Add email',style: subHeadingBodyScreen3),
                  ],
                ),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Country',style: subHeadingBodyScreen3),
                        TextField(
                          decoration: InputDecoration(
                            hintText: ' +91 ',hintStyle: hintTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  SizedBox(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phone',style: subHeadingBodyScreen3),
                        TextField(
                          decoration: InputDecoration(
                            hintText: ' 1234567895 ',hintStyle: hintTextStyle,
                            suffixIcon: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0F0F0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                width: 30,
                                height: 30,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(
                                      "assets/phonecall.svg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Text('Add number',style: subHeadingBodyScreen3,),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40.0),
                // padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            socialMediaPopup(context,'facebook',);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset("assets/facebook.svg"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            socialMediaPopup(context,'instagram',);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset("assets/instagram.svg"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            socialMediaPopup(context,'twiter',);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset("assets/twiter.svg"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            socialMediaPopup(context,'facebook',);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset("assets/facebook.svg"),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            socialMediaPopup(context,'facebook',);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset("assets/facebook.svg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 50,
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(127, 113, 217, 1),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectScreenBody++;
                          timelineNumber++;
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => HomeScreen()));
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Next',style: kButtonTextStyle),
                          SizedBox(width: 5.0,),
                          Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ReusedMainContainer extends StatelessWidget {

  final Widget ?child;

  ReusedMainContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 3.0,
                blurRadius: 5.0
            ),
          ]
      ),
      child: child,
    );
  }
}
