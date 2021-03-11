import 'package:flutter/material.dart';
import 'set_page_note/note_list.dart';
import 'set_page_schedule/schedule.dart';
import 'set_page_calculate/calculate.dart';
import 'set_page_daybook/daybook.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'HOME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime a = new DateTime.now();
  void _schedule(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return page_schedule();
    })) ; }
  void _note(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return NoteList();
    })) ; }
  void _calculate(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return page_calculate();
    })) ; }
  void _daybook(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return page_daybook();
    })) ; }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         box(schedule(),Colors.blue,1),
         box(note(),Colors.red,2),
         box(calculate(),Colors.green,3),
         box(daybook(), Colors.cyan,4),
         remain(),
    ],
     )
    );
  }
  Row schedule() {
    return Row(
         children: [
           Container(
               width: 50,
               height: 75,
               child: Icon(Icons.schedule)),
           Text('LẬP THỜI GIAN BIỂU'),
         ],
       );
  }
  Row calculate() {
    return Row(
      children: [
        Container(
            width: 50,
            height: 75,
            child: Icon(Icons.timelapse)),
        Text('BẤM GIỜ'),
      ],
    );
  }
  Row note() {
    return Row(
      children: [
        Container(
            width: 50,
            height: 75,
            child: Icon(Icons.note)),
        Text('GHI CHÚ'),
      ],
    );
  }
  Row daybook() {
    return Row(
      children: [
        Container(
            width: 50,
            height: 75,
            child: Icon(Icons.book)),
        Text('NHẬT KÍ '),
      ],
    );
  }
  Row remain() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: ListTile(
                  title: Center(child: Text('CÔNG VIỆC HIỆN TẠI')),
                  subtitle: Text('avhjdbvhjdabhvbadhsaddddddddddd'),
                  onTap: (){

                  },
                ),
            ),
          ),
        ),
        Expanded(
          child: Container(
              child: ListTile(
                title: Center(child: Text('CÔNG VIỆC TIẾP THEO')),
                subtitle: Text('avhjdbvhjdabhvbadhasdasdddddddddddd'),
                onTap: (){

                },
              ),
            ),
        ),
      ],
    );
  }

  Card box(dynamic a,dynamic b,int c) {
    return Card(
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10)
           ),
           color: b,
           elevation: 10,
           child: Container(
             width: double.maxFinite,
             child: FlatButton(
               child: a,
               onPressed: (){
                 if(c==1) _schedule();
                 if(c==2) _note();
                 if(c==3) _calculate();
                 if(c==4) _daybook();
               },
             ),
           )
       );
  }

}
