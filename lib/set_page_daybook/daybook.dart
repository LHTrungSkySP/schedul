import 'package:flutter/material.dart';
class page_daybook extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return page_daybookState();
  }
}
class page_daybookState extends State<page_daybook>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.cyan,title: Text('NHẬT KÍ'),),);;
  }

}
