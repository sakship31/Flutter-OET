import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

// const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';
// const kUrl2 = 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3';
void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text('Music App :)')),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child:FlatButton(
              onPressed: (){
                  final p=AudioCache();
                  p.play("note1.wav");
              },
              color: Colors.red[600],
              // color: Colors.black,

            ), ),   
            Expanded(
            child:FlatButton(
              onPressed: (){
                  final p=AudioCache();
                  p.play("note2.wav");
              },
              color: Colors.blue[300],
            ),),   
            Expanded(
            child:FlatButton(
              onPressed: (){
                  final p=AudioCache();
                  p.play("note3.wav");
              },
              color: Colors.yellow[300],
            ),), 
            Expanded(
            child:FlatButton(
              onPressed: (){
                  final p=AudioCache();
                  p.play("note4.wav");
              },
              color: Colors.green[900],
            ),   ),
            Expanded(
              child:FlatButton(
              onPressed: (){
                  final p=AudioCache();
                  p.play("note5.wav");
              },
              color: Colors.pink[600],
            ), ),
            Expanded(
            child:FlatButton(
              onPressed: (){
                  final p=AudioCache();
                  p.play("note6.wav");
              },
              color: Colors.blue[100],
            ), ),       
          ],
        )),
      );
  }
}