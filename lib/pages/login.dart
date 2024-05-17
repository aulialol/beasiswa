import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Log In\nYour Account',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'The bewasisa application is our platform to \nsearch for scholarship information in a convenient \nway with the guidance of a mentor',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 270,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 12.0),
                    tabs: [
                      Tab(
                        text: 'Email',
                      ),
                      Tab(
                        text: 'Phone',
                      )
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15), // Change label color
                                    border: InputBorder.none,
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15), // Change label color
                                    border: InputBorder.none,
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Next',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              'Or Log In with',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                    hintText: 'Number',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15), // Change label color
                                    border: InputBorder.none,
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Request OTP',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              'Or Log In with',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
