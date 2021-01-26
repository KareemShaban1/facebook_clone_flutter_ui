import 'package:flutter/material.dart' ;
import 'package:facebook_clone_flutter_app/Animation/FadeAnimation.dart';
import 'package:facebook_clone_flutter_app/dark-mode/welcome_dark.dart';
import 'package:facebook_clone_flutter_app/light-mode//sign_in.dart';
import 'package:facebook_clone_flutter_app/light-mode//sign_up.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _icon = Icons.brightness_2;
     
    return SafeArea(

      child: Scaffold(

        body:Container(

        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF3b5998),
          // color: Colors.black
        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            SizedBox(height: 30,),



          IconButton(
            icon: Icon(
            _icon,
              color: Colors.white,
              size: 30,
            ),
              onPressed: () {

                  if (_icon == Icons.brightness_2) {
                    _icon = Icons.wb_sunny;
                    Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomeDarkPage()),);

                  } else {
                    _icon = Icons.brightness_2;

                  }

          },
        ),

            SizedBox(height: 160),

            Text('Facebook',style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily:'Roboto'
            ),),



            SizedBox(height: 150),




            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[

                  Column(
                    children: [

                      FadeAnimation(1.6, Container(
                          height: 50,
                          width: 300,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignUp()),);
                            },
                            child: Center(
                              child: Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )),

                      SizedBox(height:20 ,),

                      FadeAnimation(1.6, Container(

                          height: 50,
                          width: 300,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white
                          ),

                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignIn()),);
                            },
                            child: Center(
                              child: Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )),

                    ],
                  )


                ]
            ),


          ],
        ),
      ),

      ),
    );
  }
}
