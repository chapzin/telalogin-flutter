import 'package:flutter/material.dart';
import 'package:telalogin/src/login/provider/ProviderPageController.dart';
import 'package:telalogin/src/login/widgets/CicleButton.dart';
import 'package:telalogin/src/login/widgets/CustomTextField.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.8),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.person,
            size: 80,
            color: Colors.white,
          ),
          SizedBox(
            height: 50,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20, color: Colors.white),
              children: <TextSpan>[
                TextSpan(text: 'Intranet'),
                TextSpan(
                    text: ' Companny',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          CicleButton(
            label: 'CADASTRAR',
            borderColor: Colors.white,
            bgColor: Colors.transparent,
            onTap: () {
              ProviderPageController.of(context).toPage(0);
            },
          ),
          SizedBox(
            height: 40,
          ),
          CicleButton(
            label: 'LOGAR',
            bgColor: Colors.white,
            textColor: Theme.of(context).accentColor,
            onTap: () {
              ProviderPageController.of(context).toPage(2);
            },
          )
        ],
      ),
    );
  }
}
