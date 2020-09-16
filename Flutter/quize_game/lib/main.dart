import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
    MaterialApp(
home: Scaffold(
  backgroundColor: Colors.black,
  body: SafeArea(
    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Quizgame(),),
  ),
),
    )
  );
}
class Quizgame extends StatefulWidget {
  @override
  _QuizgameState createState() => _QuizgameState();
}

class _QuizgameState extends State<Quizgame> {
  List<Widget> score=[];
  List<bool> ans=[true,false,true];
  int qnum=0;
  int finalscore=0;
  List<String> questions=[
    "Everything in Flutter is Widget",
    "Flutter is based on Java Prog lang",
    "Widgets in flutter are categorized as Stateful and Stateless"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(questions[qnum],textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(color: Colors.green,
                child: Text("True",textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0,color: Colors.white),
                ),
              onPressed: (){
                bool correctAns=ans[qnum];
                if (correctAns==true) {
                  score.add(Icon(
                    Icons.check, color: Colors.lightGreen,
                  )
                  
                  );
                  finalscore+=1;
                }else{
                  score.add(
                    Icon(
                      Icons.close,color: Colors.redAccent,
                    ),
                  );
                }
              setState(() {
                qnum+=1;
                  if(qnum>=questions.length){
                       Alert(
                        context: context,
                        title: 'Done!',
                        desc: 'Score:$finalscore',
                      ).show();
                      qnum=0;
                      finalscore=0;
                      score = [];
                  }
              });
              },
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
                color: Colors.red,
                child: Text("False",
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white),
                ),
              onPressed: (){

                bool correctAns=ans[qnum];
                if (correctAns==false) {
                  score.add(Icon(
                    Icons.check, color: Colors.lightGreen,
                  )
                  );
                  finalscore+=1;
                }else{
                  score.add(
                    Icon(
                      Icons.close,color: Colors.redAccent,
                    ),
                  );
                }
                setState(() {
                  
                  if(qnum+1>=questions.length){
                       Alert(
                        context: context,
                        title: 'Done!',
                        desc: 'Score:$finalscore',
                      ).show();
                      qnum=0;
                      finalscore=0;
                      score = [];
                  }
                   else{
                     qnum+=1;
                   }   

                });
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}