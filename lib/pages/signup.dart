import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Sign Up\nYour Account',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 48,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'The bewasisa application is our platform to \nsearch for scholarship information in a convenient \nway with the guidance of a mentor',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: 15), // Change label color
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
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: 15), // Change label color
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
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: 15), // Change label color
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
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: 15), // Change label color
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
    ));
  }
}
