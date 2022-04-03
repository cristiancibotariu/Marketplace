import 'package:flutter/material.dart';

class BuilderCon extends StatelessWidget {
  BuilderCon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width * 70 / 100,
        height: MediaQuery.of(context).size.height * 90 / 100,
      child: Container(color: Colors.grey),
    );
  }
}