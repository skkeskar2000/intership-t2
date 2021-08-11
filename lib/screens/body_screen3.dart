import 'package:flutter/material.dart';
import 'body_screen2.dart';
import 'package:intershpt2/constant.dart';
import 'home_screen.dart';

class BodyScreenThree extends StatefulWidget {
  const BodyScreenThree({Key? key}) : super(key: key);

  @override
  _BodyScreenThreeState createState() => _BodyScreenThreeState();
}

class _BodyScreenThreeState extends State<BodyScreenThree> {
  bool freeCheckBox = false;
  bool cashCheckBox = false;
  bool creditCheckBox = false;
  bool upiCheckBox = false;
  bool electronicCheckBox = false;
  bool mobileCheckBox = false;

  void popUp(BuildContext context,Column child) => showDialog(
    context: context,
    builder: (BuildContext context) => SimpleDialog(
      // title:Text(title),
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: child,
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
                  'How do you Pay',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price of ticket',style: subHeadingBodyScreen3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Rs',style: textStyleBodyScreen3,),
                      Container(
                        height: 20.0,
                        width: 150.0,
                        child: TextField(),
                      ),
                      Checkbox(
                        value: freeCheckBox,
                        onChanged: (bool? value){
                          setState(() {
                            freeCheckBox = value!;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30.0),
                        child: Text('Free',style: textStyleBodyScreen3,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (){
                            setState(() {
                              popUp(context,Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(child: Text('Type of charge',style: textStyleBodyScreen3),),
                                      Expanded(child: Text('Free percentage',style: textStyleBodyScreen3,),),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(240, 240, 240, 1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Expanded(child: Text('Distribution charge',style: subHeadingBodyScreen3,),),
                                      Expanded(child: Text('3%',style: subHeadingBodyScreen3,),),
                                    ],
                                  ),
                                  SizedBox(height: 30.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Card(
                                        child: Container(
                                          height: 32.0,
                                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                                          color: Color.fromRGBO(240, 240, 240, 1),
                                          child: TextButton(
                                            onPressed: (){Navigator.pop(context);},
                                            child: Text('Delete',style: textStyleBodyScreen3,),
                                          ),
                                        ),
                                      ),
                                      Card(
                                        child: Container(
                                          height: 32.0,
                                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                                          color: Color.fromRGBO(127, 113, 217, 1),
                                          child: TextButton(
                                            onPressed: (){Navigator.pop(context);},
                                            child: Text('Add',style: TextStyle(color: Colors.white),),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              );
                            });
                          },
                        child: Text('Add free distribution',style: textStyleBodyScreen3,),
                      ),
                      Expanded(child: SizedBox()),
                      TextButton(
                        onPressed: (){
                          popUp(context, Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Add coupon code',style: subHeadingBodyScreen3,),
                              SizedBox(height: 30.0,),
                              Row(
                                children: [
                                  Text('Enter Coupon Code ',style: textStyleBodyScreen3,),
                                  Container(
                                    width: 100.0,
                                    height: 15.0,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'KBVFGH',hintStyle: hintTextStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0,),
                              Row(
                                children: [
                                  Text('Generate a code',style: textStyleBodyScreen3,),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    height: 20.0,
                                    width: 120.0,
                                    color: Color.fromRGBO(240, 240, 240, 1),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Card(
                                    child: Container(
                                      height: 32.0,
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: TextButton(
                                        onPressed: (){Navigator.pop(context);},
                                        child: Text('Cancel',style: textStyleBodyScreen3,),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Container(
                                      height: 32.0,
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      color: Color.fromRGBO(127, 113, 217, 1),
                                      child: TextButton(
                                        onPressed: (){Navigator.pop(context);},
                                        child: Text('Add',style: TextStyle(color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),);
                        },
                        child: Text('Coupon Code',style: textStyleBodyScreen3,),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50.0,bottom: 20),
                    child: Text('Payment Method',style: subHeadingBodyScreen3,),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: paymentMethod('Cash',cashCheckBox),
                      ),
                      Expanded(
                        flex: 2,
                        child: paymentMethod('Credit/Debit',creditCheckBox),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: paymentMethod('UPI',upiCheckBox),
                      ),
                      Expanded(
                        flex: 2,
                        child: paymentMethod('Electronic Bank Transfer',electronicCheckBox),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: paymentMethod('Mobile Payment',mobileCheckBox),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40.0),
                    child: Text('Add payment method',style: textStyleBodyScreen3,),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row paymentMethod(String heading, bool checkBox){
    return Row(
      children: [
        Checkbox(
          value: checkBox,
          onChanged: (bool ?value){
            setState(() {
              checkBox =value!;
            });
            },
        ),
        Text(heading,style: textStyleBodyScreen3,)
      ],
    );
  }
}



