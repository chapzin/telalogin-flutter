import 'package:flutter/material.dart';
import 'package:telalogin/src/login/pages/LoginPageWidget.dart';
import 'package:telalogin/src/login/pages/LoginSignUpPageWidget.dart';
import 'package:telalogin/src/login/pages/LoginSigninPageWidget.dart';
import 'package:telalogin/src/login/provider/ProviderPageController.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'imgs/bg.jpeg',
            fit: BoxFit.cover,
          ),
          ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                LoginSignUpPageWidget(),
                LoginPageWidget(),
                LoginSigninPageWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
