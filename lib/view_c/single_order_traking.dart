import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happybuy/Helper/SizeConfig.dart';

class Single_Order_Tracking_Page extends StatefulWidget {

  @override
  Single_Order_Tracking_PageState createState() => new Single_Order_Tracking_PageState();

}

class Single_Order_Tracking_PageState extends State<Single_Order_Tracking_Page>  {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Order",),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: SizeConfig.safeBlockHorizontal * 100,
          // height: SizeConfig.safeBlockVertical * 100,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Card(
            margin: EdgeInsets.all(2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: SizeConfig.safeBlockHorizontal * 100,
                  height: SizeConfig.safeBlockVertical * 4,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Order Id: ",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("HB646841",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                  thickness: 1,
                  color: Colors.black12,
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal * 100,
                  height: SizeConfig.safeBlockVertical * 12,
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.rectangle,
                  //   // border: Border.all(style: BorderStyle.solid,width: 1)
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 59,
                        height: SizeConfig.safeBlockVertical * 12,
                        padding: EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Product Name",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ),
                            SizedBox(height: SizeConfig.safeBlockVertical * 2,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "৳ 120",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 30,
                        height: SizeConfig.safeBlockVertical * 12,
                        child: Image.asset(
                          'images/c.jpg',
                          fit: BoxFit.contain,
                          // width: SizeConfig.blockSizeHorizontal * 20,
                          // height: SizeConfig.safeBlockVertical * 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                  thickness: 1,
                  color: Colors.black12,
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal * 100,
                  height: SizeConfig.safeBlockVertical * 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 100,
                          height: SizeConfig.safeBlockVertical * 10,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 5,
                                height: SizeConfig.safeBlockVertical * 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.green, // Splash color
                                onTap: () {},
                                child: Icon(Icons.favorite_border_rounded,color: Colors.green,),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 60,
                                height: SizeConfig.safeBlockVertical * 9,
                                // color: Colors.green,
                                padding: EdgeInsets.only(left: 15,top: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Order Placed",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("We have received your order on 20 June, 2021",maxLines: 2,style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        // VerticalDivider(width: 5,color:  Colors.black12,thickness: 1,),
                        // CustomPaint(
                        //   painter: OpenPainter(),
                        // ),
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 100,
                          height: SizeConfig.safeBlockVertical * 10,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 5,
                                height: SizeConfig.safeBlockVertical * 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.green, // Splash color
                                onTap: () {},
                                child: Icon(Icons.favorite_border_rounded,color: Colors.green,),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 60,
                                height: SizeConfig.safeBlockVertical * 9,
                                // color: Colors.green,
                                padding: EdgeInsets.only(left: 15,top: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Order Confirmed",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("We have Confirmed your order on 20 June, 2021",maxLines: 2,style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 100,
                          height: SizeConfig.safeBlockVertical * 10,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 5,
                                height: SizeConfig.safeBlockVertical * 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.green, // Splash color
                                onTap: () {},
                                child: Icon(Icons.favorite_border_rounded,color: Colors.green,),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 60,
                                height: SizeConfig.safeBlockVertical * 9,
                                // color: Colors.green,
                                padding: EdgeInsets.only(left: 15,top: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Order Processed",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("We have Confirmed your order on 20 June, 2021",maxLines: 2,style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 100,
                          height: SizeConfig.safeBlockVertical * 10,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 5,
                                height: SizeConfig.safeBlockVertical * 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.green, // Splash color
                                onTap: () {},
                                child: Icon(Icons.favorite_border_rounded,color: Colors.green,),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 60,
                                height: SizeConfig.safeBlockVertical * 9,
                                // color: Colors.green,
                                padding: EdgeInsets.only(left: 15,top: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Order Shipped",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("We have Shipped your order on 20 June, 2021",maxLines: 2,style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 100,
                          height: SizeConfig.safeBlockVertical * 10,
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 5,
                                height: SizeConfig.safeBlockVertical * 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.green, // Splash color
                                onTap: () {},
                                child: Icon(Icons.favorite_border_rounded,color: Colors.green,),
                              ),
                              Container(
                                width: SizeConfig.safeBlockHorizontal * 60,
                                height: SizeConfig.safeBlockVertical * 9,
                                // color: Colors.green,
                                padding: EdgeInsets.only(left: 15,top: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Order Delivered",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("We have Delivered your order on 20 June, 2021",maxLines: 2,style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..strokeWidth = 2;
    //list of points
    var points = [Offset(50, 50),
      Offset(80, 70),
      Offset(380, 175),
      Offset(200, 175),
      Offset(150, 105),
      Offset(300, 75),
      Offset(320, 200),
      Offset(89, 125)];
    //draw points on canvas
    // canvas.drawPoints(PointMode.points, points, paint1);
    canvas.drawLine(Offset(30,30), Offset(30,150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}