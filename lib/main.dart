import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PassWordGen(),
    ),
  );
}

class PassWordGen extends StatefulWidget {
  @override
  _PassWordGenState createState() => _PassWordGenState();
}

class _PassWordGenState extends State<PassWordGen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Password Generator',
        ),
      ),
    );
  }
}
