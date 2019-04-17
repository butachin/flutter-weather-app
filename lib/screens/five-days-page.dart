import 'package:flutter/material.dart';

class FiveDaysPage extends StatefulWidget {
  FiveDaysPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FiveDaysPageState createState() => _FiveDaysPageState();
}

class _FiveDaysPageState extends State<FiveDaysPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
              left: 8.0,
              right: 8.0,
            ),
            child: TextField(
              onChanged: (text) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange[600])),
                prefixIcon: Icon(
                  Icons.search,
                  size: 24.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
