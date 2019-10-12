import 'package:flutter/material.dart';
import 'package:telalogin/src/login/provider/ProviderPageController.dart';
import 'package:telalogin/src/login/widgets/CicleButton.dart';
import 'package:telalogin/src/login/widgets/CustomTextField.dart';

class LoginSignUpPageWidget extends StatefulWidget {
  @override
  _LoginSignUpPageWidgetState createState() => _LoginSignUpPageWidgetState();
}

class _LoginSignUpPageWidgetState extends State<LoginSignUpPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.8),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.person,
            size: 80,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 70,
          ),
          CustomTextField(
            label: 'EMAIL',
            placeholder: 'Informe o seu email',
            color: Theme.of(context).accentColor,
          ),
          CustomTextField(
            label: 'SENHA',
            placeholder: 'informe sua senha',
            color: Theme.of(context).accentColor,
            isPassword: true,
          ),
          CustomTextField(
            label: 'CONFIRME A SENHA',
            placeholder: 'confirme o password',
            color: Theme.of(context).accentColor,
            isPassword: true,
          ),
          GestureDetector(
            onTap: () {
              ProviderPageController.of(context).toPage(2);
            },
            child: Container(
              width: double.infinity,
              child: Text(
                'Ja possui conta?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CicleButton(
            label: 'CADASTRAR',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
