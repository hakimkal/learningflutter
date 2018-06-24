import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_app/ui/login.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _SplashScreenState();
  }

}
class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  CurvedAnimation _iconAnimation;

  void handleTimeout() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new Login()));
  }

  startTimeout() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, handleTimeout);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));

  _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeIn);
    _iconAnimation.addListener(() => this.setState(() {}));

    _iconAnimationController.forward();

    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Scaffold(
        body: new Center(
            child: new Image(
              image: new AssetImage("images/face.png"),
              width: _iconAnimation.value * 100,
              height: _iconAnimation.value * 100,
            )),
      ),
    );
  }
}