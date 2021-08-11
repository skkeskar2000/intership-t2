import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}
AlertDialog buildAlertDialog(BuildContext context) {
  return AlertDialog(
    title: Row(
      children: [
        Text('START TIME',),
        SizedBox(width: 70,),
        Text('END TIME',),
      ],
    ),
    content: Time(),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
        child: const Text('Clean',style: TextStyle(fontStyle:FontStyle.normal,color: Color(0xff666666),fontSize: 15,fontFamily: 'Poppins',)),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context, 'OK'),
        child: ElevatedButton(

          onPressed: () {  },
          child: const Text('Apply',style: TextStyle(fontStyle:FontStyle.normal,color: Color(0xff7F71D9),fontSize: 15,fontFamily: 'Poppins',),),style:ElevatedButton.styleFrom(primary: Color(0xffF5F5F5)),),
      ),
    ],
  );
}

class _TimeState extends State<Time> {

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        DropdownButton<String>(
            hint: Text('9:00AM',style: TextStyle(color: Color(0xffC4C4C4)),),
            items: [

              DropdownMenuItem(
                  value: '1',
                  child: Text('9:00AM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('10:00AM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('9:00AM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('9:00AM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('9:00AM'))
            ]
            , onChanged: (_value){}

        ),SizedBox(width: 20,),
        Text('TO',style: TextStyle(fontStyle:FontStyle.normal,fontWeight: FontWeight.w400,fontFamily: 'Poppins',fontSize: 10,color: Color(0xff666666)),),SizedBox(width: 20,),
        DropdownButton<String>(
            hint: Text('5:00PM',style: TextStyle(color: Color(0xffC4C4C4)),),
            items: [

              DropdownMenuItem(
                  value: '1',
                  child: Text('5:00PM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('5:00PM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('5:00PM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('5:00PM')),
              DropdownMenuItem(
                  value: '1',
                  child: Text('5:00PM'))
            ]
            , onChanged: (_value){}

        )
      ],
    );
  }
}