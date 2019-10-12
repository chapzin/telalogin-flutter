import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telalogin/src/login/widgets/CicleButton.dart';
import 'package:telalogin/src/login/widgets/CustomTextField.dart';

class LoginSigninPageWidget extends StatefulWidget {
  @override
  _LoginSigninPageWidgetState createState() => _LoginSigninPageWidgetState();
}

class _LoginSigninPageWidgetState extends State<LoginSigninPageWidget> {
  Widget _textEsqueceuSenha() {
    return Container(
      width: double.infinity,
      child: Text(
        'Esqueceu sua senha?',
        textAlign: TextAlign.right,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget _logarRedesSociais() {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(color: Colors.black, height: 15)),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('OU LOGIN POR REDE SOCIAL',
                style: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold))),
        Expanded(child: Divider(color: Colors.black, height: 15)),
      ],
    );
  }

  Widget _botoesSocial() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: CicleButton(
            bgColor: Colors.blue[800],
            icon: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
              size: 14,
            ),
            label: 'Facebook',
            onTap: () {},
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: CicleButton(
            bgColor: Colors.red[800],
            icon: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
              size: 14,
            ),
            label: 'Google',
            onTap: () {},
          ),
        ),
      ],
    );
  }

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
          _textEsqueceuSenha(),
          SizedBox(
            height: 30,
          ),
          CicleButton(
            label: 'LOGAR',
            onTap: () {},
          ),
          SizedBox(
            height: 30,
          ),
          _logarRedesSociais(),
          SizedBox(
            height: 30,
          ),
          _botoesSocial()
        ],
      ),
    );
  }
}
