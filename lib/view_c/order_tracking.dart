import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OrderTracking extends StatefulWidget {
  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}


class _OrderTrackingState extends State<OrderTracking> with TickerProviderStateMixin {
   TabController tabController;
   final List placedOrderList = ["","","","",""];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order List"),
        backgroundColor: Colors.green,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: "Placed",),
            Tab(text: "Processing ",),
            Tab(text: "Picked",),
            Tab(text: "Delivered",),
          ],
        )

      ),
      body: TabBarView(
        controller: tabController,
        dragStartBehavior: DragStartBehavior.start,
        children: [
          Container(
            color: Colors.black12 ,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
                height: 10,
              ),
              scrollDirection: Axis.vertical,
              itemCount: placedOrderList.length,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 5,right: 5),
                  decoration: new BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child : ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical:4.0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DF45646",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            width: 95.0,
                            height: 22.0,
                            decoration: new BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0),topRight: Radius.circular(7.0),bottomRight: Radius.circular(7.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 55.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Colors.deepPurple,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0)),
                                  ),
                                  child: Text("Placed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFFF47E08),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(6.0),topRight: Radius.circular(6)),
                                  ),
                                  child: Text("Paid",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        )
                      ]
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "৳ 5000",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "3 July, 05:30 PM",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]
                      ),
                    )
                  ),
                );
              }
            ),
          ),
          Container(
            color: Colors.black12 ,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
                height: 10,
              ),
              scrollDirection: Axis.vertical,
              itemCount: placedOrderList.length,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 5,right: 5),
                  decoration: new BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child : ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical:4.0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DF45646",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            width: 122.0,
                            height: 22.0,
                            decoration: new BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0),topRight: Radius.circular(7.0),bottomRight: Radius.circular(7.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 82.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFF08A6F4),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0)),
                                  ),
                                  child: Text("Processing",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFFF47E08),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(6.0),topRight: Radius.circular(6)),
                                  ),
                                  child: Text("Paid",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        )
                      ]
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "৳ 5000",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "3 July, 05:30 PM",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]
                      ),
                    )
                  ),
                );
              }
            ),
          ),
          Container(
            color: Colors.black12 ,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
                height: 10,
              ),
              scrollDirection: Axis.vertical,
              itemCount: placedOrderList.length,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 5,right: 5),
                  decoration: new BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child : ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical:4.0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DF45646",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            width: 95.0,
                            height: 22.0,
                            decoration: new BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0),topRight: Radius.circular(7.0),bottomRight: Radius.circular(7.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 55.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFF0880F4),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0)),
                                  ),
                                  child: Text("Picked",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFFF47E08),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(6.0),topRight: Radius.circular(6)),
                                  ),
                                  child: Text("Paid",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        )
                      ]
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "৳ 5000",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "3 July, 05:30 PM",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]
                      ),
                    )
                  ),
                );
              }
            ),
          ),
          Container(
            color: Colors.black12 ,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
                height: 10,
              ),
              scrollDirection: Axis.vertical,
              itemCount: placedOrderList.length,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 5,right: 5),
                  decoration: new BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child : ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical:4.0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DF45646",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            width: 112.0,
                            height: 22.0,
                            decoration: new BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.rectangle,
                              // borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0),topRight: Radius.circular(7.0),bottomRight: Radius.circular(7.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 72.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFF08BEF4),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),bottomLeft: Radius.circular(6.0)),
                                  ),
                                  child: Text("Delivered",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 22.0,
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: new BoxDecoration(
                                    color: Color(0xFFF47E08),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(6.0),topRight: Radius.circular(6)),
                                  ),
                                  child: Text("Paid",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        )
                      ]
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "৳ 5000",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "3 July, 05:30 PM",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]
                      ),
                    )
                  ),
                );
              }
            ),
          ),
        ],
      )
    );
  }
}