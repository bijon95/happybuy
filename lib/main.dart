import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happybuy/view/SplashScreen.dart';
import 'package:happybuy/view/category_list.dart';
import 'package:happybuy/view/product_view.dart';
import 'package:happybuy/view_c/Dashboard_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Buy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardClient(),
    );
  }
}
