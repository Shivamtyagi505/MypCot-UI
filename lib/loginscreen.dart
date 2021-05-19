import 'package:flutter/material.dart';
import 'package:mypcot/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      child: Image.asset(
                        "assests/images/logo.png",
                        fit: BoxFit.fitWidth,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: Image.asset("assests/images/background.png",
                        fit: BoxFit.fitWidth, height: 100, width: 400),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                  child: Text(
                                "+91",
                              )),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.only(right: 15.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.deepOrange,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      borderSide: new BorderSide(
                                          color: Colors.deepOrange),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    counter: null,
                                    counterText: '',
                                    hintText: "10 Digit Number",
                                  ),
                                  keyboardType: TextInputType.phone,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 80.0,
                          width: 70,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.orange[50],
                              border: Border.all(color: Colors.orange[100]),
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 80.0,
                          width: 70,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.orange[50],
                              border: Border.all(color: Colors.orange[100]),
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 80.0,
                          width: 70,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.orange[50],
                              border: Border.all(color: Colors.orange[100]),
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 80.0,
                          width: 70,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.orange[50],
                              border: Border.all(color: Colors.orange[100]),
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 280),
                    child: Text(
                      'Resend',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 16,fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 60,
                    width: 350,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeScreen()),
                        );
                      },
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                        colors: [Colors.orange[400], Colors.deepOrange[400]],
                      ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("LOG IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,fontSize: 17)),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 131),
                    child: Row(
                      children: [
                        Text(
                          'Not a User?',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Register',
                          style:
                              TextStyle(fontSize: 14, color: Colors.deepOrange),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
