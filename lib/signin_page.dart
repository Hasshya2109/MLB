import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myloanbhai/Otp_fetcher.dart';
import 'package:myloanbhai/login_page.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/Banner-background.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 104, horizontal: 45),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "My",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "Loan",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Bhai",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: w * 0.22,
              ),
              Row(
                children: [
                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(1, 1),
                                color: Colors.red.withOpacity(0.5))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          hintText: 'Phone Number',
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: w * 0.05,
              ),
              Row(
                children: [
                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(1, 1),
                                color: Colors.red.withOpacity(0.5))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          hintText: 'PAN Card Number',
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: w * 0.05,
              ),
              Row(
                children: [
                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(1, 1),
                                color: Colors.red.withOpacity(0.5))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          hintText: 'Password',
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: w * 0.05,
              ),
              Row(
                children: [
                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(1, 1),
                                color: Colors.red.withOpacity(0.5))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          hintText: 'Referral Code ( Optional )',
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: w * 0.15,
              ),
              SizedBox(
                width: w*0.4,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Otp());
                  },
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.red),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: w * 0.03,
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: w*0.15),
                      child: RichText(
                          text: TextSpan(
                              text: "Have an Account?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              children: [
                            TextSpan(
                                text: " Login",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()..onTap = () => Get.to(() => LoginPage())
                            )
                          ]))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
