import 'package:flutter/material.dart';
import 'body_screen2.dart';
import 'package:intershpt2/constant.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:flutter/cupertino.dart';

class RegistrationScreen extends StatefulWidget {

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isSelected = false;
  bool isCheck = false;
  String time = '9:59 pm';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ReusedMainContainer(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Registration Form',style: mainHeading,),
              Text('Details to ask participant',style: textStyleBodyScreen3,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Name',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Email',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Contact no',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Age',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Date of birth',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Profession',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Address',check: false,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'City',check: false,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'State',check: false,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Country',check: false,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Pincode',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Job title/ role in company',check: false,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'Company Name',check: true,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                child: ToggleRow(name: 'File/ image upload',check: false,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Custom...',
                      style: textStyleBodyScreen3,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 1.0,
                width: 300.0,
                color: Colors.white54,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Last day to register',style: textStyleBodyScreen3,),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '7 Jun 2021',
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 20.0,
                        child: Row(
                          children: [
                            Checkbox(
                                value: isCheck,
                                onChanged: (bool ?value){
                                  setState(() {
                                    isCheck = value!;
                                  });
                                }
                            ),
                            Text('by $time',style: textStyleBodyScreen3,),
                          ],
                        ),
                      ),
                      Container(
                        height: 25.0,
                        child: TextButton(onPressed: (){}, child: Text('Change time',
                        style: TextStyle(fontSize: 9.0,color: Color.fromRGBO(127, 113, 217, 1)),
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maximum registration',style: textStyleBodyScreen3,),
                      Container(
                        width: 100.0,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '500',
                          ),
                        ),
                      ),
                     Container(
                       height: 50.0,
                       width: 300.0,
                       margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5.0),
                         color: Color.fromRGBO(127, 113, 217, 1),
                       ),
                       child: Center(
                           child: Text(
                               'Save and Create',
                             style: kButtonTextStyle
                           ),
                       ),
                     )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ToggleRow extends StatefulWidget {

  final bool ?check;
  final String ?name;
  ToggleRow({this.name,this.check});

  @override
  _ToggleRowState createState() => _ToggleRowState();
}
class _ToggleRowState extends State<ToggleRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.name!,style: textStyleBodyScreen3,),
        Expanded(child: SizedBox()),
        Container(
          child: Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
                value: widget.check!,
                activeColor: Color(0xFF7F71D9),
                onChanged: (value) {
                  setState(() {
                    // _switchToggle = value;
                  });
                }),
          )
        ),
      ],
    );
  }
}
