import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //MediaQuery to fit all screen sizes
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      //this solved the error of bottom overflowed by pixels
      resizeToAvoidBottomInset : false,
      //background color of the screen
      backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: w,
              height: h*0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "img/diagram.png"),
                  fit: BoxFit.scaleDown,
                )
              ),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello",
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold
                    ),),
                  Text("Sign into your account",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500]
                    ),),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //shape ofthe textfield

                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          //to elevate the box more and make the shadow more prominent//
                          spreadRadius: 7,
                          //defines the x and y properties set the widget to the same size on bot ends
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          //this removed the square shape at the edge after making the textfield circular
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,

                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          //this removed the square shape at the edge after making the textfield circular
                            borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //shape ofthe textfield

                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              //to elevate the box more and make the shadow more prominent//
                              spreadRadius: 7,
                              //defines the x and y properties set the widget to the same size on bot ends
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            //this removed the square shape at the edge after making the textfield circular
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,

                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            //this removed the square shape at the edge after making the textfield circular
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container(),),
                      Text("Forgot your Password?",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[500]
                        ),)
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.cyan[400],
              ),
              child: Center(
                child:
                  Text("Sign In",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
              ),
            ),
            SizedBox(height: w*0.17,),
            RichText(text: TextSpan(
                text: "Don\'t have an account?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20
                ),
              children: [
                TextSpan(
                    text: "Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                )
              ]
            ),)
          ],
        ),
    );
  }
}
