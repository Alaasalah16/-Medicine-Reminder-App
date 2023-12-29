import 'package:flutter/cupertino.dart' ;
import 'package:flutter/material.dart' ;
import 'package:flutter/services.dart' ;
import 'package:medicine/screens/add_new_medicine/add_new_medicine.dart';
import 'package:medicine/screens/home/home.dart';
import 'package:medicine/screens/login/Start_Screen.dart';
import 'package:medicine/screens/welcome/Welcome2.dart';
import 'package:medicine/screens/welcome/categories.dart';
import 'package:medicine/splash/Splash.dart';
import './screens/welcome/welcome.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:medicine/screens/welcome/categories.dart';


void main() {
  runApp(MedicineApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black.withOpacity(0.05),
    statusBarColor: Colors.black.withOpacity(0.05),
    statusBarIconBrightness: Brightness.dark
  ));
}

class MedicineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner:false,
      theme: ThemeData(
          fontFamily: "Popins",
          primaryColor: Color.fromRGBO(173, 219, 208, 1.0),
          //Color.fromRGBO(7, 190, 200, 1),
          textTheme: TextTheme(
              headline1: ThemeData.light().textTheme.headline1.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 38.0,
                    fontFamily: "Popins",
                  ),
              headline5: ThemeData.light().textTheme.headline1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                    fontFamily: "Popins",
                  ),
              headline3: ThemeData.light().textTheme.headline3.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    fontFamily: "Popins",
                  ))),
      routes: {
        "/splash":(context)=> Splash2(),
        "/startScreen":(context)=>StartScreen(),
        "/Welcome2":(context)=>Welcome2(),
        "/": (context) => Welcome(),
        "/home": (context) => Home(),
        "/categories":(context)=>Categories(),
        //"/": (context) => Welcome(),
        //"/home": (context) => Home(),
        "/add_new_medicine": (context) => AddNewMedicine(),
      },
      initialRoute: "/splash",




      //home:Categories(),


    );
  }
}


