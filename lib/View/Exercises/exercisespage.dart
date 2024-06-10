import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_rats/Model/Model.dart';

class ExercisesPage extends StatefulWidget {
  final ExerciesModel? exerciesModel;
  final String? id, title, thumbnail, gif;
  final int? second;

  ExercisesPage(
      {Key? key,
      this.exerciesModel,
      this.gif,
      this.id,
      this.second,
      this.thumbnail,
      this.title})
      : super(key: key);

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  bool isPlaying = false;
  bool isComplete = false;
  int startSound = 0;
  String audioPath = 'audio.mp3';
  late Timer timer;

  // void playAudio() async {
  //   await audioCache.play(audioPath);
  //   print('playing');
  // }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == widget.second) {
        timer.cancel();
        if (mounted) {
          setState(() {
            isComplete = true;
            // playAudio();
            Navigator.of(context).pop();
          });
        }
      }
      if (mounted) {
        setState(() {
          startSound = timer.tick;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CachedNetworkImage(
                  imageUrl: '${widget.gif}',
                  imageBuilder: (context, imageProvider) => Container(
                    height: 400,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image(image: imageProvider),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Time Start',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.green[500],
                child: Text(
                  '$startSound / ${widget.second!.toStringAsFixed(0)} s',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.2),
                  border: Border.all(color: Colors.green, width: 1),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "End Now",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
