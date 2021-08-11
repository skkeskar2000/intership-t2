import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intershpt2/screens/datepicker.dart';
import 'package:intershpt2/constant.dart';
import 'package:intershpt2/screens/home_screen.dart';
import 'time.dart';

class BodyScreen1 extends StatefulWidget {
  @override
  _BodyScreen1State createState() => _BodyScreen1State();
}

class _BodyScreen1State extends State<BodyScreen1> {

  String ?valueChoose;
  List<String> listCategory = [
    'Social','Sports','Education','Culture','Career','Entertainment','custom'
  ];

  String ?timeChoose;
  List<String> listTime = [
    '1','2','3','4','5','6','7','8','9','10','11','12'
  ];

  String ?dayChoose;
  List<String> listDay = [
    'Mon','Tue','Wed','Thu','Fri','Sat','Sun'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'About your Event',
                  style: mainHeading,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add Title',style: subHeadingBodyScreen3,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Event Name',
                          hintStyle: hintTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Start date',style: subHeadingBodyScreen3,),
                          SizedBox(
                              height: 40.0,
                              width: 100.0,
                              child: DatePicker()),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Time Period',style: subHeadingBodyScreen3,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15.0),
                                  padding: EdgeInsets.all(4.0),
                                  height: 35.0,
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                  child: DropdownButton(
                                    value: timeChoose,
                                    hint: Text('3'),
                                    items:listTime.map<DropdownMenuItem<String>>((String timeValue)
                                    {
                                      return DropdownMenuItem(
                                        value: timeValue,
                                        child: Text(timeValue,style: subHeadingBodyScreen3,),
                                      );
                                    }).toList(),
                                    onChanged: (newValue){
                                      setState(() {
                                        timeChoose = newValue!.toString();
                                      });
                                    },
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 15.0,left: 20.0),
                                  padding: EdgeInsets.all(8.0),
                                  height: 35.0,
                                  // width: 45.0,
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                  child: DropdownButton(
                                    value: dayChoose,
                                    hint: Text('Days',style: subHeadingBodyScreen3,),
                                    items:listDay.map<DropdownMenuItem<String>>((String dayValue)
                                    {
                                      return DropdownMenuItem(
                                        value: dayValue,
                                        child: Text(dayValue),
                                      );
                                    }).toList(),
                                    onChanged: (newValue){
                                      setState(() {
                                        dayChoose = newValue!.toString();
                                      });
                                    },
                                  ),
                                ),

                              ],
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Time',style: subHeadingBodyScreen3,),
                          SizedBox(
                            height: 40.0,
                            width: 100.0,
                            child: DatePicker(),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text('Time Zone',style: subHeadingBodyScreen3,)),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('All Day',style: subHeadingBodyScreen3,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15.0),
                                  padding: EdgeInsets.all(4.0),
                                  height: 35.0,
                                  // width: 45.0,
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                  child: DropdownButton(
                                    value: timeChoose,
                                    hint: Text("Dosen't repeat",style: subHeadingBodyScreen3),
                                    items:listTime.map<DropdownMenuItem<String>>((String timeValue)
                                    {
                                      return DropdownMenuItem(
                                        value: timeValue,
                                        child: Text(timeValue,style: subHeadingBodyScreen3,),
                                      );
                                    }).toList(),
                                    onChanged: (newValue){
                                      setState(() {
                                        timeChoose = newValue!.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Category',style: subHeadingBodyScreen3,),
                          Container(
                            width: 140.0,
                            child: DropdownButton(
                              hint: Text('Social'),
                              value: valueChoose,
                              onChanged: (newValue){
                                setState(() {
                                  valueChoose = newValue!.toString();
                                });
                              },
                              items: listCategory.map<DropdownMenuItem<String>>((String valueItem)
                              {
                                return DropdownMenuItem<String>(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            height: 10.0,
                            width: 10.0,
                            color: Colors.blue,
                          ),
                          Container(child: Text('Blue',style: subHeadingBodyScreen3,)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        BodyContainer2(),
      ],
    );
  }
}

class BodyContainer2 extends StatefulWidget {

  @override
  _BodyContainer2State createState() => _BodyContainer2State();
}

class _BodyContainer2State extends State<BodyContainer2> {

  int screenOneChangeBodyNumber = 1;
  Color containerOneColor = activeContainerColor;
  Color containerOneTextColor = activeTextColor;
  Color containerTwoColor = inactiveContainerColor;
  Color containerTwoTextColor = inactiveTextColor;

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
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Where  is it held?',
              style: mainHeading,
            ),
          ),
          Container(
            color: Colors.black12,
            height: 38.0,
            margin: EdgeInsets.symmetric(horizontal: 40.0),
            padding: EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: containerOneColor,
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            if(containerOneColor == inactiveContainerColor)
                              {
                                containerOneColor = activeContainerColor;
                                containerOneTextColor = activeTextColor;
                                containerTwoColor = inactiveContainerColor;
                                containerTwoTextColor = inactiveTextColor;
                                screenOneChangeBodyNumber = 1;
                              }
                          });
                        },
                        child: Text('Address',
                          style: TextStyle(fontSize: 17.0,color: containerOneTextColor),
                        ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: containerTwoColor,
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          if(containerTwoColor == inactiveContainerColor)
                          {
                            containerOneColor = inactiveContainerColor;
                            containerOneTextColor = inactiveTextColor;
                            containerTwoColor = activeContainerColor;
                            containerTwoTextColor = activeTextColor;
                            screenOneChangeBodyNumber = 2;
                          }
                        });
                      },
                      child: Text(
                        'On Line',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: containerTwoTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.all(4.0),
            child: screenOneChangeBodyNumber ==1
                ?AddressContainer()
                :OnLineContainer()
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
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              HomeScreen(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
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
          ),
        ],
      ),
    );
  }
}

class AddressContainer extends StatefulWidget {
  @override
  _AddressContainerState createState() => _AddressContainerState();
}

class _AddressContainerState extends State<AddressContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusedTextField(heading: 'Area',hintText: 'Lilabagh',),
        Row(
          children: [
            Container(
              width: 130.0,
              child: ReusedTextField(
                heading: 'Door no.',
                hintText: '57/8',
            ),
            ),
            Expanded(child: SizedBox()),
            Container(
              width: 130.0,
              child: ReusedTextField(
                heading: 'Street',
                hintText: '87 Sean Manars',
            ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 130.0,
              child: ReusedTextField(
                heading: 'City.',
                hintText: 'Lonand',
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              width: 130.0,
              child: ReusedTextField(
                heading: 'Pin',
                hintText: '415521',
              ),
            ),
          ],
        ),
        ReusedTextField(heading: 'Name of address',hintText: 'Office',),
        Container(
          color: Color.fromRGBO(240, 240, 240, 1),
          margin: EdgeInsets.only(right: 100.0),
          child: Row(
            children: [
              Icon(Icons.upload_sharp),
              SizedBox(width: 5.0,),
              Text('Upload Photo Of Location',style: textStyleBodyScreen3,),
            ],
          ),
        ),
      ],
    );
  }
}

class ReusedTextField extends StatelessWidget {
  final String ?heading;
  final String ?hintText;
  final Icon ?icons;
  ReusedTextField({this.heading,this.hintText,this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading!,style: subHeadingBodyScreen3,),
          TextField(
            decoration: InputDecoration(
              suffixIcon: icons,
              hintText: hintText!,hintStyle: hintTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

enum IntervalTypes { never, thirty, sixty, ninety }
class OnLineContainer extends StatefulWidget {

  @override
  _OnLineContainerState createState() => _OnLineContainerState();
}

class _OnLineContainerState extends State<OnLineContainer> {
  IntervalTypes? _interval = IntervalTypes.never;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusedTextField(
          heading: 'Attach a link',
          hintText: 'Enter a URL',
          icons: Icon(Icons.link,),
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Link Expiration',style: subHeadingBodyScreen3,),
                    ListTile(
                      title: const Text('Never'),
                      leading: Radio<IntervalTypes>(
                        value: IntervalTypes.never,
                        groupValue: _interval,
                        onChanged: (IntervalTypes? value) {
                          setState(() {
                            _interval = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Link will expire in 30 days'),
                      leading: Radio<IntervalTypes>(
                        value: IntervalTypes.thirty,
                        groupValue: _interval,
                        onChanged: (IntervalTypes? value) {
                          setState(() {
                            _interval = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Link will expire in 60 days'),
                      leading: Radio<IntervalTypes>(
                        value: IntervalTypes.sixty,
                        groupValue: _interval,
                        onChanged: (IntervalTypes? value) {
                          setState(() {
                            _interval = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Link will expire in 90 days'),
                      leading: Radio<IntervalTypes>(
                        value: IntervalTypes.ninety,
                        groupValue: _interval,
                        onChanged: (IntervalTypes? value) {
                          setState(() {
                            _interval = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
              flex: 1,
                child: Column(
                  children: [
                    ReusedContainer(),
                    ReusedContainer(),
                    ReusedContainer(),
                    ReusedContainer(),
                  ],
                ),
            ),
          ],
        ),
        SizedBox(
          height: 70.0,
        )
      ],
    );
  }
}

class ReusedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1),
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.15),
          blurRadius: 3.0,
          spreadRadius: 2.0,
       ),]
      ),
    );
  }
}

class OnlineScreenIconButton extends StatelessWidget {
  const OnlineScreenIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 28.0,
          height: 28.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.red,
              border: Border.all(color: Colors.black)
          ),
          child: IconButton(
            onPressed: (){
            },
            icon: Icon(
              Icons.circle,
              color: Colors.black,
              size: 10.0,
            ),
          ),
        ),
        Text('Never',style: textStyleBodyScreen3,)
      ],
    );
  }
}
