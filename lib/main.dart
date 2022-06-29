import 'package:api/screen/apiscreen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>ApiScreen(),
      },
    ),
  );
}