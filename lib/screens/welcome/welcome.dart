import 'package:flutter/material.dart';
import 'package:medicine/screens/home/home.dart';
import '../../helpers/platform_flat_button.dart';
import '../../screens/welcome/title_and_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:medicine/screens/welcome/categories.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class Welcome extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final ButtonStyle buttonPrimary= ElevatedButton.styleFrom(

    maximumSize:Size(327, 50),
    primary:Colors.cyan,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),
        )
    ),



  );
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    void goToHomeScreen() => Navigator.pushReplacementNamed(context, "/home");

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 239, 220, 1.0),

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Image.asset(

                //'assets/images/welcome_image.png',
                //'assets/images/suhaila.jpg',
              'assets/images/medicinee.jpg',


            width: double.infinity, height: deviceHeight* 0.4
              ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            TitleAndMessage(deviceHeight),
            SizedBox(
              height: deviceHeight * 0.03,
            ),




            /*Container(
              height: deviceHeight * 0.09,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),


                  child:SizedBox(
                    height: 50,
                    width: 350,
                    child:

                    ElevatedButton(style: buttonPrimary
                      ,onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=>Home(),
                          ),
                        );
                      }, child: const Text("Get start now",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),

                    ),
                  ),

                  /*
                  SizedBox(
                    height: 50,
                    width: 350,
                    child:ElevatedButton(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>Home(),
                      ),
                      );


                    },
                      style: ButtonStyle(

                          shape: MaterialStateProperty.all<RoundedRectangleBorder>
                            (RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(20)
                          ),
                          )
                      ),
                      child: Text(
                        "Get started now",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                          // backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        ),
                      ),
                    ),


                  ),*/

                  /*Container(

                    color: Colors.blue,
                    width: double.infinity,
                    height: 50.0,
                    child: MaterialButton(onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);

                    },
                      child: Text(
                        'Get started now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,

                        ),),),
                  ),*/

                 /* PlatformFlatButton(
                    handler: goToHomeScreen ,
                    color: Theme.of(context).primaryColor,
                    buttonChild: FittedBox(
                      child: Text(
                        "Get started now",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                  )*/
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
