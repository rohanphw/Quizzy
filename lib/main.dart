import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import './question.dart';


void main() { 
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex=0;
  
  void answerQuestion(){
    setState(() {
      questionIndex=questionIndex+1;
    });
   print(questionIndex);
  }


  @override
  Widget build(BuildContext context){
    var questions = [
      'What\'s your favourite color ?', 
    'What\'s your favourite animal ?',
    ];
    return MaterialApp(
      home: Scaffold( 
      appBar: AppBar(
        title: Text('First App'),
        ),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'), 
          onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'), 
          onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'), 
          onPressed: answerQuestion,
          ),
        ],
        ),
      ),
    );
  }
}