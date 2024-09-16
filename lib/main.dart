import 'package:ch4_p7/firsttask.dart';
import 'package:ch4_p7/homepage.dart';
import 'package:ch4_p7/secondtask.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context){
            return Homepage();
          },
          "firsttask":(context){
            return FirstTask();
          },
          "secondtask":(context){
            return SecondTask();
          },
          // "thirdtask":(context){
          //   return ThirdTask();
          // },
        },
      )
  );
}