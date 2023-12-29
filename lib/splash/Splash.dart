import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:medicine/screens/login/Start_Screen.dart';


class Splash2 extends StatefulWidget {
  const Splash2({Key key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_)=>  StartScreen(),

      )
      );

    });

  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual , overlays: SystemUiOverlay.values);




  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color.fromRGBO(173, 219, 208, 1.0)
            ,Color.fromRGBO(246, 239, 220, 1.0)


              ,],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),




              Image.asset('assets/images/ourWatch.png'),



              /*Icon(Icons.watch,
                size: 80,
                color: Color.fromRGBO(22, 74, 74, 1.0),),*/


              SizedBox(
                height: 20,
              ),

              Text("welcome app",style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 32,
                color: Color.fromRGBO(22, 74, 74, 1.0),

              ),
              ),

              SizedBox(
                height: 80,

              ),

              SpinKitSpinningLines(color:Color.fromRGBO(22, 74, 74, 1.0),
                size: 50,)



            ],
          ),
        )

    );
  }
}
