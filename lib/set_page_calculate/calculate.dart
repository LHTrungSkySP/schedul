import 'package:flutter/material.dart';
import 'stopwatch.dart';
class page_calculate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return page_calculateState(
    );
  }
}
class page_calculateState extends State<page_calculate>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterStopWatch(),
    );
  }

}