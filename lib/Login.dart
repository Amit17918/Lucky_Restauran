import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Registration.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/lucky.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.red[300]),
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.fastfood,color: Colors.white,),
                  Container(color: Colors.white10,width: 1,height:50,),
                  Text('ORDER WITH CHOWNOW',
                      style: TextStyle(color: Colors.white,fontSize: 20))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.blue[300]),
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.feedback, color: Colors.white,),
                  Container(color: Colors.white10,width: 1,height:50,),
                  Text('ORDER WITH FACEBOOK',
                      style: TextStyle(color: Colors.white,fontSize: 20))
                ],
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'No Chow Now Account?',
                      style: TextStyle(color: Colors.white60, fontSize: 16),
                    ),
                    FlatButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Registration(),));
                    },
                      child: Text(
                        'Sign-Up Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
