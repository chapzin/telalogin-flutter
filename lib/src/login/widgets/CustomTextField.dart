import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final String label;
  final bool isPassword;
  final Color color;
  const CustomTextField({
    Key key,
    this.placeholder = "",
    this.label = "",
    this.isPassword = false,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            autofocus: false,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: placeholder,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
