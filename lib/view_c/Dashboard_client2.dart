import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:happybuy/Drawer/MainDrawer.dart';
import 'package:happybuy/Model/category_list.dart';
import 'package:happybuy/view_c/single_product_view.dart';

class DashboardClient2 extends StatefulWidget {
  @override
  _DashboardClient2State createState() => _DashboardClient2State();
}

class _DashboardClient2State extends State<DashboardClient2> {
  final Controller _controller = Get.put(Controller());

  bool cartButton = true;
  List<Color> colorlist = [
    Colors.purple[300],
    Colors.blue[300],
    Colors.red[300],
    Colors.green[300],
    Colors.purple[300],
    Colors.brown[300],
    Colors.greenAccent,
    Colors.indigo[300],
    Colors.orange[300],
    Colors.pink[300],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy Buy",style: TextStyle(fontSize: 14),),
        centerTitle: false,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            tooltip: 'Search',
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            tooltip: 'Cart',
            onPressed: (){

            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              //Slider
              Container(
                height: 15,
              ),
              Container(
                // margin: EdgeInsets.only(top: 30),
                // height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 180,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                  items: [
                    FadeInImage(
                      image: NetworkImage(
                        "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528",
                      ),
                      placeholder: AssetImage('images/gif-logo.gif'),
                      fit: BoxFit.fill,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red[200]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red[200]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red[200]),
                    )
                  ],
                ),
              ),
              //cat list
              Container(
                margin: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.width / 2 -10,
                width: MediaQuery.of(context).size.width,
                child: Obx(() {
                  if (_controller.isLoading.value) {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                    );
                  } else {
                    return GridView.count(
                      padding: const EdgeInsets.only(left :15.0, right: 15,top: 4,bottom: 4),
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 12,
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      children: List.generate(choices.length, (index) {
                        return GestureDetector(
                          child : Center(
                            child: CategoryCard(choice: choices[index]),
                          ),
                          onTap: () => {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => AllCategoryPage()),
                            // )
                          },
                        );
                      })
                    );
                  }
                }),
              ),
              //product list
              Container(
                margin: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Product",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Obx(() {
                  if (_controller.isLoadingProduct.value) {
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                    );
                  } else {
                    return GridView.count(
                        padding: const EdgeInsets.only(left :15.0, right: 15,top: 2,bottom: 6),
                        primary: false,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        children: List.generate(_controller.productList.length, (index) {
                          return GestureDetector(
                            child: Container(
                              // height: MediaQuery.of(context).size.height* 20,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // SizedBox(height: 10,),
                                  Image.asset(
                                    'images/c.jpg',
                                    fit: BoxFit.fill,
                                    width: 60 * MediaQuery.of(context).devicePixelRatio,
                                    height: 35 * MediaQuery.of(context).devicePixelRatio,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height* .039,
                                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        child: Text(
                                          _controller.productList[index].name,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      // SizedBox(height: 2,),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "৳"+_controller.productList[index].price,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              SizedBox(width: 15,),
                                              Text(
                                                "৳ 120",
                                                style: TextStyle(
                                                    decoration: TextDecoration.lineThrough,
                                                    decorationStyle: TextDecorationStyle.solid,
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "1 pc",
                                            style: TextStyle(
                                                decorationStyle: TextDecorationStyle.solid,
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * .26,
                                          height: MediaQuery.of(context).size.height * .02,
                                          decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(5)),
                                          child : Text("Add to cart",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                                        ),
                                        onTap: (){

                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SingleProductView(index)),
                              )
                            },
                          );
                        })
                    );
                  }
                }),
              ),
              // all list
            ],
          ),
        ),
      ),
    );
  }
}
