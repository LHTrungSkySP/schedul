import 'package:flutter/material.dart';
class page_schedule extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return page_scheduleState();
  }
}
class page_scheduleState extends State<page_schedule>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'THỜI KHÓA BIỂU'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){

            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            ],
          )
        ],
      ),
    );
  }
}