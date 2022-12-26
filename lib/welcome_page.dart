import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myloanbhai/login_page.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
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
                fit: BoxFit.cover),
          ),
          //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: h*0.1),
                width: w * 0.3,
                height: h * 0.1,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  //color: Colors.red,
                    image: DecorationImage(
                  image: AssetImage("img/logo.png"),
                )),
              ),
              // SizedBox(
              //   height: 0,
              // ),
              SizedBox(
                width: w,
                height: h* 0.7,
                child: Image.asset("img/homepage.png",
                        fit: BoxFit.cover)),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginPage());
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
                      'Get Started',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),

            ],
          )),
    );
  }
}
