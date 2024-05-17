import 'package:beasiswa/pages/login.dart';
import 'package:beasiswa/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image(
                image: AssetImage('assets/one component.png'),
                fit: BoxFit.cover,
              ),
            ),
            SlidingUpPanel(
              minHeight: 112,
              maxHeight: 300,
              panel: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Center(
                    child: Container(height: 3, width: 50, color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: LogIn(),
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 800),
                                          reverseDuration:
                                              Duration(milliseconds: 800)));
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    backgroundColor: Colors.black,
                                    minimumSize: Size(160, 45),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: SignUp(),
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 800),
                                          reverseDuration:
                                              Duration(milliseconds: 800)));
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(160, 45),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    side: BorderSide(
                                        color: Colors.black, width: 1)),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      )),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Continue with Google',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Continue with Facebook',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Continue with Apple',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 55,
                left: 33,
                child: Column(
                  children: [
                    Text(
                      'BEWA',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 64,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'bewasiswa will help you find \nscholarships and mentors for \nyou. ',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
