import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Flutter Apps'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Box(),
          Box(),
          Box(),
          Box(),
          Container(width: double.infinity),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.blue[800]],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[600],
            blurRadius: 15.0,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(10),
      width: 95,
      height: 95,
      alignment: Alignment.center,
      child: Text(
        'Hi World',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
