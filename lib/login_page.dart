import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myloanbhai/signin_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: w,
        height: h,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/Banner-background.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 104, horizontal: 50),
          child: Column(
            children: [
              Row(
                children: const [
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
                height: w * 0.5,
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
                                offset: const Offset(1, 1),
                                color: Colors.red.withOpacity(0.5))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.red)),
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
                                offset: const Offset(1, 1),
                                color: Colors.red.withOpacity(0.5))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.red)),
                          hintText: 'Password',
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: w * 0.03,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: w * 0.35),
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: w * 0.15,
              ),
              SizedBox(
                width: w * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const SignUpPage());
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Login',
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
                      // margin: EdgeInsets.only(left: w * 0.08),
                      child: RichText(
                          text: TextSpan(
                              text: "Don't have an account?",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              children: [
                        TextSpan(
                            text: " Create",
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const SignUpPage()))
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
