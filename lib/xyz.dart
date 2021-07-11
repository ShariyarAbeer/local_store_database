import 'package:flutter/material.dart';

class XYZ extends StatelessWidget {
  const XYZ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
