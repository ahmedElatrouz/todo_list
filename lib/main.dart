import 'package:flutter/material.dart';
import 'package:todo_list/taskWidget.dart';

Map<String,String> tasks={'task1':'do task1','task2':'do task2'};

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My-Tasks',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'My-Tasks'),
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

  void _addTask() {
      print("add task");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      Container(
        height: 150,
        child: DrawerHeader(
          margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
          child: Center(child: 
          Text(
            'To-Do App',
            style:TextStyle(color: Colors.white,fontSize: 30) ,)),
          decoration: BoxDecoration(
            color: Colors.teal,
          ),
        ),
      ),
      ListTile(
        title: Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
),


      body: Container(
        color: Colors.pinkAccent[400],
        child: ListView(
           children: <Widget>[
             Container(
               height:120,
                child: Center(
                  child: Text(
                    'TODOY',
                    style: TextStyle(fontSize: 40,color: Colors.white),
                    )),
               color: Color(0xff000025),
             ),
             
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
             TaskWidget(isChecked:false, ),
           ]
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color(0xff000025),
      ), 
    );
  }


}
