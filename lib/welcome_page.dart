import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ],
        )
    );
  }
}
