import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happybuy/Controller/controller.dart';
class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

  Widget countText(data){
    return Text(data,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),);
  }

  Widget descText(data){
    return Text(data,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Dashboard"),backgroundColor: Colors.green[400],leading: Icon(Icons.menu),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                      margin: EdgeInsets.only(left: 10,right: 5,top: 10),
                      padding: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red[300],
                      ),
                      child: Column(children: [
                    countText("1"),
                    descText('New Order')
                  ],)),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                    margin: EdgeInsets.only(left: 5,right: 5,top: 10),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Processing')
                      ],)),
                ),

                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Delivered')
                      ],)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Total Product')
                      ],)),
                ),

                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Total Category')
                      ],)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('New Customar'),
                        descText('This Month')
                      ],)),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Total Order'),
                        descText('This Month')
                      ],)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple[300],
                      ),
                      child: Column(children: [
                        countText("10.0"),
                        descText('Total sell'),
                        descText('Today')
                      ],)),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple[300],
                      ),
                      child: Column(children: [
                        countText("1000"),
                        descText('Total Sell'),
                        descText('This week')
                      ],)),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple[300],
                      ),
                      child: Column(children: [
                        countText("1000"),
                        descText('Total Sell'),
                        descText('This Month')
                      ],)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Total Customar')
                      ],)),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5,right: 10,top: 10),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green[300],
                      ),
                      child: Column(children: [
                        countText("1"),
                        descText('Total Order')
                      ],)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
