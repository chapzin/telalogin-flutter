import 'package:flutter/material.dart';

class CicleButton extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  final double width;
  final double height;
  final Icon icon;
  final Function onTap;

  const CicleButton(
      {Key key,
      this.label = "",
      this.bgColor,
      this.textColor = Colors.white,
      this.borderColor,
      this.width,
      this.height = 60,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        color: bgColor == null ? Theme.of(context).accentColor : bgColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: borderColor == null
                      ? null
                      : Border.all(color: borderColor)),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon == null ? Container() : icon,
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                        color: textColor, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
