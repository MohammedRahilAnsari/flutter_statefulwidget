import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful App Example",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FravoriteCityState();
  }
}

class _FravoriteCityState extends State<FavoriteCity> {
  String nameCity = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              // onSubmitted: (String userInput) {
              onChanged: (String userInput) {
               setState(() {
                 nameCity = userInput;
               });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Your Best City is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
