import 'package:flutter/cupertino.dart';
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
  var _char = false;
  var _num = false;
  var _lower = false;
  var _upper = false;
  var _len = 11.0;
  var length;
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            value: _lower,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Lowercase'),
            secondary: Icon(CupertinoIcons.info),
            onChanged: (bool value) {
              setState(() {
                _lower = value;
              });
            },
            activeColor: Colors.redAccent,
          ),
          CheckboxListTile(
            value: _upper,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('UpperCase'),
            secondary: Icon(CupertinoIcons.italic),
            onChanged: (bool value) {
              setState(() {
                _upper = value;
              });
            },
            activeColor: Colors.redAccent,
          ),
          CheckboxListTile(
            title: Text('Special Characters'),
            secondary: Icon(CupertinoIcons.money_dollar),
            value: _char,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool value) {
              setState(() {
                _char = value;
              });
            },
            activeColor: Colors.redAccent,
          ),
          CheckboxListTile(
            value: _num,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text('Numbers'),
            secondary: Icon(CupertinoIcons.number_circle),
            onChanged: (bool value) {
              setState(() {
                _num = value;
              });
            },
            activeColor: Colors.redAccent,
          ),
          ListTile(
            title: Text('Length'),
          ),
          Slider(
            value: _len,
            min: 8,
            max: 25,
            label: _len.round().toString(),
            divisions: 5,
            onChanged: (double value) {
              setState(() {
                _len = value;
                length = value.round;
              });
            },
            activeColor: Colors.redAccent,
            inactiveColor: Colors.grey[900],
          ),
        ],
      ),
    );
  }
}
