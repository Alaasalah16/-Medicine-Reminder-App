import 'dart:io';

import 'package:flutter/cupertino.dart' ;
import 'package:flutter/material.dart';

class PlatformFlatButton extends StatelessWidget {
  final Function handler;
  final Widget buttonChild;
  final Color color;
  final ButtonStyle buttonPrimary= ElevatedButton.styleFrom(

    maximumSize:Size(327, 50),
    primary:Colors.cyan,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),
        )
    ),



  );

  PlatformFlatButton({@required this.buttonChild,@required this.color,@required this.handler});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: this.buttonChild,
            color: this.color,
            onPressed: this.handler,
            borderRadius: BorderRadius.circular(15.0),
          )

    ///////////////////////BY ME////////////////////////////////
        /*SizedBox(
      height: 50,
      width: 350,
      child:ElevatedButton(style: buttonPrimary
        ,onPressed: (){
          /*Navigator.push(context,
            MaterialPageRoute(
              builder: (context)=>Home(),
            ),
          );*/
        }, child: const Text("Done",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),),

      ),
    );*/


    /////////////////////// END BY ME////////////////////////////////


     :SingleChildScrollView(
       child:MaterialButton(
         color: Color.fromRGBO(22, 74, 74, 1.0),
         height: 50.0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),
    ),
    /*style: TextButton.styleFrom(
              primary:Color.fromRGBO(7, 190, 200, 1),
              textStyle: TextStyle(
                color: Colors.cyan,
               // color: this.color,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
              ),
            ),*/

    child:this.buttonChild,
    onPressed: this.handler,

    ),
     );


    /*:MaterialButton(
            color: Color.fromRGBO(7, 190, 200, 1),
            height: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            /*style: TextButton.styleFrom(
              primary:Color.fromRGBO(7, 190, 200, 1),
              textStyle: TextStyle(
                color: Colors.cyan,
               // color: this.color,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
              ),
            ),*/

            child:this.buttonChild,
            onPressed: this.handler,

          );*/


  }
}


