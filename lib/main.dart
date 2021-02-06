import 'package:click_button/toplamaClass.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home: MyHome(),
  ));
}

class MyHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return toplamaClass();
  }
}

