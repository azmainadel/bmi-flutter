import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundIconButton extends StatelessWidget {
  IconData icon;
  Function onChanged;

  RoundIconButton({@required this.icon, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 42.0, height: 42.0),
      child: Icon(icon),
      onPressed: onChanged,
    );
  }
}
