import 'package:flutter/material.dart';
import 'package:scale_ui/SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale UI to fit multiple display sizes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextScalePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: SizeConfig.safeBlockVertical * 25,
          width: SizeConfig.safeBlockHorizontal * 55,
          color: Colors.black,
        ),
      ),
    );
  }
}

class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Scaling text!',
          style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal * 10,
          ),
        ),
      ),
    );
  }
}
