import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistraingState createState() => _RegistraingState();
}

class _RegistraingState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/lucky.jpg'), fit: BoxFit.cover)),
      child: ListView(scrollDirection: Axis.vertical, children: <Widget>[SizedBox(height: 10,),
        Image(
          image: AssetImage(
            'images/lucky.jpg',
          ),
          height: 75,
          width: 75,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'ChowNow',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Text(
            'Sign-up Once. Use With Any ChowNow Powered App.',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 22.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'First Name',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 22.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Last Name',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 22.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                autofocus: false,
                obscureText: true,
                style: TextStyle(fontSize: 22.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(20, 15, 20, 5),
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                    color: Colors.red[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'SUBMIT & LOGIN',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: RichText(textAlign:TextAlign.center,
                  text: TextSpan(children: [
                TextSpan(
                    text: 'By creating an account you agree to our\n\n',
                    style: TextStyle(color: Colors.white70, fontSize: 18)),
                TextSpan(
                    text: 'Terms of Use\t',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800)),
                TextSpan(
                    text: 'and\t',
                    style: TextStyle(color: Colors.white70, fontSize: 18)),
                TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800)),
              ])),
            ),
          ],
        ),
      ]),
    ));
  }
}
