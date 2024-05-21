import 'package:flutter/material.dart';
import 'package:login_page/loginPage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'loginPage',
    routes: {
      'loginPage':(context)=>login(),
    },
  ));
}
