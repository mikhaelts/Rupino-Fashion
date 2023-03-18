import 'package:flutter/material.dart';
import '/Home.dart';

final ThemeData temaPadrao = ThemeData(
    primaryColor: Color.fromARGB(255, 255, 255, 255),
    accentColor: Color(0xe1ffffff));

void main() => runApp(MaterialApp(
      title: "Rupino fashion",
      home: Home(),
      theme: temaPadrao,
      debugShowCheckedModeBanner: false,
    ));
