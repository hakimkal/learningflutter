import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  void _erase() {
    clearState() {
      _userController.clear();
      _passwordController.clear();
    }

    setState(clearState());
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/face.png',
                height: 90.0,
                width: 90.0,
                color: Colors.greenAccent,
              ),
              new Container(
                  color: Colors.white,
                  height: 200.0,
                  width: 380.0,
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        controller: _userController,
                        decoration: new InputDecoration(
                          hintText: "Username",
                          icon: new Icon(Icons.person),
                          helperText: 'Email or Username',
                        ),
                      ),
                      new TextField(
                        obscureText: true,
                      autocorrect: false,
                        controller: _passwordController,
                        decoration: new InputDecoration(
                          hintText: "Password",
                          icon: new Icon(Icons.lock),
                          helperText: 'Enter password',
                        ),
                      ),
                      new Padding(padding: EdgeInsets.all(10.5)),
                      new Center(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 35.0),
                              child: new RaisedButton(
                                onPressed: () => {},
                                child: new Text("Login"),
                                textColor: Colors.white,
                                color: Colors.redAccent,
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(left: 135.0),
                              child: new RaisedButton(
                                color: Colors.redAccent,
                                textColor: Colors.white,
                                onPressed:_erase,
                                child: new Text(
                                  "Clear",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              new Padding(padding: EdgeInsets.all(10.3)),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Center(
                        child: new Text(
                      "Welcome Bunny",
                      style: new TextStyle(color: Colors.white),
                    ))
                  ]),
            ],
          )),
    );
  }
}
