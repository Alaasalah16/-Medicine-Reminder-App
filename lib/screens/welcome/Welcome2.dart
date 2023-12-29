import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:medicine/screens/add_new_medicine/add_new_medicine.dart';
import 'package:medicine/screens/home/home.dart';
import 'package:medicine/screens/login/Start_Screen.dart';
import 'package:medicine/screens/welcome/categories.dart';
import 'package:medicine/screens/welcome/welcome.dart';

class Welcome2 extends StatefulWidget {
  const Welcome2({Key key}) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {

  final items=const [
    Icon(Icons.home,
      color: Color.fromRGBO(246, 239, 220, 1.0)),
    Icon(Icons.access_alarms_sharp,
      color: Color.fromRGBO(246, 239, 220, 1.0),),
    /*Icon(Icons.medication,
      color: Colors.black,),*/
    Icon(Icons.monitor_heart,
      color: Color.fromRGBO(246, 239, 220, 1.0),),


  ];
  int index =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(246, 239, 220, 1.0) ,
      //Color.fromRGBO(7, 190, 200, 1),


      bottomNavigationBar:CurvedNavigationBar(
        items:items,
        index: index,
        backgroundColor: Color.fromRGBO(173, 219, 208, 1.0),
        color:Color.fromRGBO(17, 115, 115, 1.0),
        animationDuration: Duration(microseconds: 500),
        onTap:(selectedIndex){
          setState(() {
            index=selectedIndex;
          });
        },

        height: 70,

        /*items:const [
      Icon(Icons.home,
      color: Colors.white,),
      Icon(Icons.favorite,
        color: Colors.white,),
      Icon(Icons.settings,
        color: Colors.white,),
       ],*/
      ),

      body: Container(
        color: Color.fromRGBO(7, 190, 200, 1),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child:getSelectWidget(index:index),

      ),
    );
  }
}


Widget getSelectWidget({ int index}) {
  Widget widget ;
  switch(index){
    case 0:
      widget=  Welcome();
      break;

    case 1:
      widget= Home();
      break;

    /*case 2:
      widget=  AddNewMedicine();
      break;*/

    default:
      widget=  Categories();
      break;

  }
  return widget ;
}