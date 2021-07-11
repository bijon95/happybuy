import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happybuy/GlobalSetting/GlobalColor.dart';
import 'package:happybuy/view_c/single_order_traking.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: GlobalColor.appbarColor,
        title: Text('My Orders'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext contex, int index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  padding: EdgeInsets.only(left: 20,top: 10,bottom: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                        children: [
                          Text("Order#:11101",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                          Text("20-July-2021, 3.20PM",style: TextStyle(color: Colors.grey[400],fontSize: 10)),
                          SizedBox(height: 10,)
                        ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                            child: Text("Total: ৳ 120",style: TextStyle(fontWeight: FontWeight.bold),)),

                      ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Text("Estimated Delivery on Today",style: TextStyle(color: Colors.green,fontSize: 12),),
                          Text("Picked",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight:FontWeight.bold,fontSize: 14),),
                        ],
                      ),

                    ],
                  ),

                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Single_Order_Tracking_Page()));
                },
              );
            }),
      ),
    );
  }
}
