import 'package:flutter/material.dart';
import 'package:color_randomizer/randomizer/ColorRandomizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Randomizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _backgroundColor;

  void _updateBackgroundColor() {
    setState(() {
      _backgroundColor = RandomColor.randomFromARGB();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor ?? RandomColor.randomFromARGB(),
        appBar: AppBar(
          title: Text("Color Randomizer"),
        ),
        body: Container(
          child: InkWell(
            onTap: _updateBackgroundColor,
            child: Center(
                child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "Hey there",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))),
          ),
        ));
  }
}
