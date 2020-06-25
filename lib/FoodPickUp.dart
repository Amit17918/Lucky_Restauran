import 'package:flutter/material.dart';
import 'package:flutter_kitchenbar/Registration.dart';

import 'ChooseItem.dart';

class FoodPickUp extends StatefulWidget {

  @override
  _FoodPickUpState createState() => _FoodPickUpState();

}

class _FoodPickUpState extends State<FoodPickUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
         color: Colors.transparent,
          margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: Colors.teal[200],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Pickup Available (3.5 Mi Away)')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      height: 150,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Santa Monica',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                '1281 West Bluff Creek Drive,',
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5))),
                            color: Colors.teal[200]),
                        child: FlatButton(
                          child: Text(
                            'PICk-UP',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5))),
                            color: Colors.white38),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: FlatButton(
                          child: Text('DELIERY',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  letterSpacing: 1)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.black87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5))),
                            color: Colors.white),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: FlatButton(
                          child: Text(
                            'NOW',
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5))),
                            color: Colors.white70),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: FlatButton(
                          child: Text('LATER',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black38)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: MediaQuery.of(context).size.width,
                height: 40,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  color: Colors.white30,
                ),
                child: Text(
                  "Pick-Up Your Order ASAP",
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.teal[200]),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChooseItem(),));
                      },
                      child: Text(
                        'CHOOSE YOUR ITEMS',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 18,
                            color: Colors.white),
                      )))
            ],
          )
    );
  }
}
