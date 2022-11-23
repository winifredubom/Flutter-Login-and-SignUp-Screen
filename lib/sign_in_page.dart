import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "google.png",
      "facebook.png",
      "twitter.png"];

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
                        "img/user.png"),
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
                        //hint on what the textfield is about
                          hintText: "Your Password",
                          prefixIcon: const Icon(Icons.lock, color: Colors.black, ),
                          focusedBorder: OutlineInputBorder(
                            //this removed the square shape at the edge after making the textfield circular
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.white,

                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            //this removed the square shape at the edge after making the textfield circular
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.white)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //shape of the textfield

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
                        hintText: "Your Email Id",
                          prefixIcon: const Icon(Icons.email, color: Colors.black,),
                          focusedBorder: OutlineInputBorder(
                            //this removed the square shape at the edge after making the textfield circular
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.white,

                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            //this removed the square shape at the edge after making the textfield circular
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.white)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,)

                ],
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.cyan[400],
              ),
              child:  const Center(
                child:
                Text("Sign Up",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
              ),
            ),
            SizedBox(height: w*0.2,),
            RichText(text: TextSpan(
                text: "Sign up using one of the following methods",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16
            ),) ),
            Wrap(
                children: List<Widget>.generate(3, (index) => Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "img/"+images[index]
                      ),
                    ),
                  ),
                ))
            )
          ],
        )
    );
  }
}
