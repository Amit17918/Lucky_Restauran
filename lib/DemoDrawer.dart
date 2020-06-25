import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';
import 'ChooseItem.dart';
import 'FoodPickUp.dart';
import 'Login.dart';

class DemoDrawer extends StatefulWidget {
  @override
  _DemoDrawerState createState() => _DemoDrawerState();
}

class _DemoDrawerState extends State<DemoDrawer> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  double _Opacity = 0;
  double swipeLeft = 0, swipeRight = 0;
  final Duration duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    return Scaffold(
      body: SwipeDetector(
        onSwipeLeft: () {
          setState(() {
            isCollapsed ? _Opacity = 1 : _Opacity = 0;
            isCollapsed = !isCollapsed;
          });
        },
        onSwipeRight: () {
          setState(() {
            isCollapsed ? _Opacity = 1 : _Opacity = 0;
            isCollapsed = !isCollapsed;
          });
        },
        swipeConfiguration: SwipeConfiguration(
            verticalSwipeMinVelocity: 100.0,
            verticalSwipeMinDisplacement: 50.0,
            verticalSwipeMaxWidthThreshold: 100.0,
            horizontalSwipeMaxHeightThreshold: 50.0,
            horizontalSwipeMinDisplacement: 50.0,
            horizontalSwipeMinVelocity: 200.0),
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              setState(() {
                swipeRight = details.delta.dx;
              });
            } else {
              setState(() {
                swipeLeft = details.delta.dx;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage(
                      'images/lucky.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[menu(context), chooseItems(context)],
            ),
          ),
        ),
      ),
    );
  }

  Widget menu(context) {
    return Opacity(
      opacity: _Opacity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 48),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage(
                    'images/lucky.jpg',
                  ),
                  width: 150,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Setting',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: 180,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.white,
                )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ));
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget deshboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.02 * screenHeight,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      right: isCollapsed ? 0 : -0.6 * screenWidth,
      bottom: 0,
      child: Material(
        animationDuration: duration,
        elevation: 8,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        isCollapsed ? _Opacity = 1 : _Opacity = 0;
                        isCollapsed = !isCollapsed;
                      });
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Order Options',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: FoodPickUp(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget chooseItems(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.02 * screenHeight,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      right: isCollapsed ? 0 : -0.6 * screenWidth,
      bottom: 0,
      child: Material(
        animationDuration: duration,
        elevation: 8,
        color: Colors.transparent,
        child: Container(
//          color: Colors.white,
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: ListView.builder(
            itemCount: foodList.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                child: Text(foodList[index].toString()),
              );
            },
          ),
        ),
      ),
    );
  }

  List foodList = [
    'Gourment Burgers',
    'Poutine',
    'Gourment Dogs',
    'Fish & Chips',
    'Sides',
    'Beverages'
  ];
}
