

class Methods{
  int _qnumb=0,_finalscore=0;
  List _questionBank=[
    ["Everything in Flutter is Widget","true"],
    ["Flutter is based on Java Programming lang","false"],
    ["Widgets in flutter are categorized as Stateful and Stateless","true"],
  ];

  void nextquestion(){
    if(_qnumb<=_questionBank.length-1){
      _qnumb+=1;
    }
  }
  void scoreincrement(){
    _finalscore+=1;
  }
    int getscore(){
    return _finalscore;
  }
bool isFinished(){
    if(_qnumb>=_questionBank.length-1){
      return true;
    }
    else{
      return false;
    }
}
  String getQuestion(){
    return _questionBank[_qnumb][0];
  }
  String getAnswer(){
    return _questionBank[_qnumb][1];
  }
  void reset() {
    _qnumb = 0;
    _finalscore=0;
  }
}