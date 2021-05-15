import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_login_page/Animation/fadeAnimation.dart';

void main(){
  return runApp(
      MaterialApp(
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //These 4 lines force the orientation to remain potrait even when the phone is turned
    // ------------they start here------------------------------------------------------------------------
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    //------------they end here------------------------------------------------------------------------
    // You have import this package for that to work: import 'package:flutter/services.dart';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children:  [
            FadeAnimation(1,
            Container(
                height: MediaQuery.of(context).size.height*.4,
               // width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue,],
                    ),

                  // image: DecorationImage(
                  //   image: AssetImage("images/bg1.png"),
                  //   fit: BoxFit.cover,
                  // )
                ),
                child: Stack(
                  children: [
                         Positioned(
                             child: FadeAnimation(1,
                               Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/overlay1.png")
                                  )
                                ),
                        ),
                             ),
                           ),
                    Positioned(
                      child: FadeAnimation(1.5,
                        Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/overlay1.png")
                            )
                        ),
                      ),),
                    ),

                    Positioned(
                      top: 150,
                      left: 170,
                      child: FadeAnimation(1.8,
                        Container(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),),
                      ),),
                    ),
                  ],
                ),
              ),),

              // Login fields start here
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:  FadeAnimation(2,
                  Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(100, 0, 280, .5),
                            blurRadius: 20,
                            offset: Offset(0, 6),
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          //Email or phone field
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.white),
                              ),
                            ),
                            child:  FadeAnimation(2.1,
                              TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or phone number",
                                hintStyle: TextStyle(color: Colors.grey[500])
                              )),
                            ),
                          ),

                          //Password field
                          Container(
                            padding: EdgeInsets.all(8),
                            child:  FadeAnimation(2.2,TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey[500])
                              ),
                            ),)
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),

                    //Login button

                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                            ),
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                        ),
                      ),

                      //Login text

                      child: Center(
                        child:  FadeAnimation(2.3,
                          Text("Login",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),)),
                    ),
                    SizedBox(height: 70,),

                    //Forgot password text
                    FadeAnimation(2,
                      Text("Forgot Password?", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                    )
                  ],
                ))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
