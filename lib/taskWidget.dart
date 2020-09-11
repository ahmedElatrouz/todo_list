import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({
    Key key,
    @required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {

  @override
  Widget build(BuildContext context) {
    bool ch=widget.isChecked;
   return Container(
               decoration: BoxDecoration(
                 color: Colors.red[200],
               ),
               height:70,
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Checkbox(value: ch, onChanged: (ch){
                     setState(() {
                       ch=!ch;
                     });
                   }),
                   Text("data")
                 ],
               ),
               margin:EdgeInsets.all(5),
               padding:EdgeInsets.all(10) ,
             );
  }
}
