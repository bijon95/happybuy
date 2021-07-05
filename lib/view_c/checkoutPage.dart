import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:happybuy/view_c/single_product_view.dart';

class CheckoutPageView extends StatefulWidget {
  // int pass3;
  // CheckoutPageView(this.pass3);

  
  @override
  _CheckoutPageViewState createState() => _CheckoutPageViewState();
}

class _CheckoutPageViewState extends State<CheckoutPageView> {

  final Controller _controller = Get.put(Controller());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // data =  _controller.productList as List<String>;
  }

  @override
  Widget build(BuildContext context) {
    // 3 = widget.pass3;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(fontSize: 14),),
        centerTitle: false,
        backgroundColor: Colors.green,
        actions: <Widget>[
          TextButton(
            onPressed: (){},
            child: Text(
                "Clear",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )
            ),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            //Slider
            Container(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .28,
                  height: MediaQuery.of(context).size.width * .24,
                  child: Image.asset(
                    'images/c.jpg',
                    fit: BoxFit.fill,
                    width: 40 * MediaQuery.of(context).devicePixelRatio,
                    height: 40 * MediaQuery.of(context).devicePixelRatio,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.width * .24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .5,
                            height: MediaQuery.of(context).size.height * .05,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        // _controller.productList[1].name,
                                        "Product Name",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        "1 pc.",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                    Text(
                                        " | ",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                    Text(
                                      // "৳"+_controller.productList[10].price,
                                      "৳ 120",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.delete)
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .05,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      // "৳"+_controller.cartList[10].name,
                                      "৳ 120",
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "৳ 120",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          decorationStyle: TextDecorationStyle.solid,
                                          color: Colors.black26,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      " 16% Off ",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: () {},
                              child:  Container(
                                // padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ClipOval(
                                      child: Material(
                                        color: Colors.black54, // Button color
                                        child: InkWell(
                                          splashColor: Colors.white70, // Splash color
                                          onTap: () {},
                                          child: Icon(Icons.remove,color: Colors.white,size: 18,),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                        " 1 ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                    SizedBox(width: 10,),
                                    ClipOval(
                                      child: Material(
                                        color: Colors.black54, // Button color
                                        child: InkWell(
                                          splashColor: Colors.white, // Splash color
                                          onTap: () {},
                                          child: Icon(Icons.add,color: Colors.white,size: 18,),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                shape: StadiumBorder(),
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * .15,
              padding: EdgeInsets.fromLTRB(20,20,20,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Subtotal",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      Text(
                        // "৳"+_controller.productList[3].price,
                        "৳ 120",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Discount",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                      Text(
                        "- "+"৳ 60",
                        // "- "+"৳"+_controller.productList[3].price,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Delivery fee",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                      Text(
                        // "৳"+_controller.productList[3].price,
                        "৳ 120",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Container(
            //   color: Colors.amber,
            //   height: MediaQuery.of(context).size.height * .55,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * .088,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                        "1 item",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: Text(
                      // "Total : "+"৳"+_controller.productList[3].price,
                      "Total : "+"৳ 180",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * .85,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Checkout',style: TextStyle(fontSize: 17,color: Colors.white),),
                  )
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.green,
                )
              ),
            ],
          )
      )
    );
  }

}