import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:happybuy/Mydrawer.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  bool _isLoading = true;

  var order_receive ;
  var order_processing;
  var order_delivered;

  var total_products;
  var total_available_products;

  var thisYearIncomes;
  var  thisMonthIncomes;
  String dataSharePre = '';
  String nameKey = "_key_name";
  bool isSwitched = true;

  Future<String> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey);
  }






  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DashBoard"),actions: [
        Container()
      ],),
      drawer: MainDrawer(),
      body: _isLoading ? Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,child: Center(child: CircularProgressIndicator()),) : SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.blue[200],
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: (){
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) =>OrderDashboard()));
                    },
                    child: containerView("Order Receive",order_receive)),
                GestureDetector(
                    onTap: (){
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) =>OrderDashboard()));
                    },
                    child: containerView("Order Processing",order_processing)),
              ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                GestureDetector(
                    onTap: (){

                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) =>OrderDashboard()));
                    },child: containerView("Order Delivered",order_delivered)),
                //   containerView("Order Processing",order_processing),
              ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: (){
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) =>ProductList()));
                    },
                    child: containerView("Total Product",total_products)),
                GestureDetector(
                    onTap: (){
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) =>ProductList()));
                    },
                    child: containerView("Available Product",total_available_products)),
              ],),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                containerView("This Month Income","৳"+thisMonthIncomes),
                containerView("This Year Income","৳"+thisYearIncomes),
              ],),
          ],),
        ),
      ),
    );
  }
  Widget containerView(String txt, String count) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 130,
      width: MediaQuery.of(context).size.width / 2 - 30,
      decoration: BoxDecoration(
          color: Color(0xffffffff), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Center(child: Text(txt))),
            Container(
                child: Center(
                    child: Text(
                      count,
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),
    );
  }
}
