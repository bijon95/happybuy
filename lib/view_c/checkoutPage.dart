import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:happybuy/Helper/SizeConfig.dart';
import 'package:happybuy/Helper/helper.dart';
import 'package:happybuy/db/dbModel.dart';
import 'package:happybuy/db/db_helper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class CheckoutPageView extends StatefulWidget {

  @override
  _CheckoutPageViewState createState() => _CheckoutPageViewState();
}

class _CheckoutPageViewState extends State<CheckoutPageView> {
  final dbHelper = DatabaseHelper.instance;
  final Controller _controller = Get.put(Controller());
  String dbjson = "" ;
  Future<List> _Dataquery() async {
    _controller.cartList.clear();
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
    // print(allRows[0]["_id"]);
    print("no data printed");
    dbHelper.queryAllRows().then((notes) {
      // print(notes);
      notes.forEach((note) {
        // dbjson = dbjson + ((('{product_id: '+note['product_id'].toString()+
        //     ', product_name: '+note['product_name']+
        //     ', price: '+note['price'].toString()+
        //     ', quantity: '+note['quantity'].toString()) + "}"));
        dbjson = dbjson + jsonEncode(note);

        // print(note);
      //  _controller.cartList.add(Model.fromMapObject(note));
        // d_items.add(Model.fromMapObject(notes));
        // count.add((Model.fromMapObject(notes).pQuantity));
      });


    });
  }




  //order create
  Future<List> createOrder() async {
    print("create order");

    // set up POST request arguments
    Uri url = Uri.parse(Helper.baseurl +'/placedorder');
    Map<String, String> headers = {"Content-type": "application/json"};



    var testdata = {
      "user_id": 3,
      "shipping_address": "sylhey",
      "total_price": 1220,
      "orders": [
       jsonDecode(dbjson)
      ]
    };

    var response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(testdata),
    );
    print(response.body);
    print(response.statusCode);


    if (response.statusCode == 200) {
      dbHelper.deleteall();
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => OrderPage()));
      print(response.body);
    }
    // this API passes back the id of the new item added to the body
  }

  @override
  void initState() {
    // TODO: implement initState

    _Dataquery();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

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
              // height: MediaQuery.of(context).size.height * .02,
              height: SizeConfig.safeBlockVertical * 2,
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: ListView.builder(
                  itemCount: _controller.cartList.length,
                  itemBuilder: (BuildContext contex, int index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width * .28,
                      // height: MediaQuery.of(context).size.height * .15,
                      width: 100,
                      height:100,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                       Helper.baseurl+ _controller.cartList[index].pImg,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width * .7,
                      // height: MediaQuery.of(context).size.height * .14,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // width: MediaQuery.of(context).size.width * .5,
                                // height: MediaQuery.of(context).size.height * .05,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                            _controller.cartList[index].pName,
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
                                    _controller.cartList[index].pQuantity.toString(),
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
                    _controller.cartList[index].pPrice.toString(),
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
                                // width: MediaQuery.of(context).size.width * .4,
                                // height: MediaQuery.of(context).size.height * .05,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "৳ 180",
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
                                          "৳ 180",
                                          style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              decorationStyle: TextDecorationStyle.solid,
                                              color: Colors.black26,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 5,),
                                        Text(
                                            " 20% Off ",
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
                );
              }),
            ),

            Container(
              // height: MediaQuery.of(context).size.height * .16,
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
                        "৳ 180",
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
                        "- "+"৳36",
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
                        "৳20",
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
          // height: MediaQuery.of(context).size.height * .092,
          height: SizeConfig.safeBlockVertical * 11,
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
                      "Total : "+"৳174",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  createOrder();

                },
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