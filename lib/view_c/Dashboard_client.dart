import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happybuy/Controller/controller.dart';

class DashboardClient extends StatefulWidget {
  @override
  _DashboardClientState createState() => _DashboardClientState();
}

class _DashboardClientState extends State<DashboardClient> {
  final Controller _controller = Get.put(Controller());

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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              //Slider
              Container(
                // margin: EdgeInsets.only(top: 30),
                height: 300,
                child: CarouselSlider(
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
                  //Slider Container properties
                  options: CarouselOptions(
                    autoPlay: true,
                  ),
                ),
              ),
              //cat list
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.width / 2 - 40,
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
                    return ListView.builder(
                        itemCount: _controller.catList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext contex, int index) {
                          return Container(
                            margin: EdgeInsets.only(left: 13, right: 5),
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                //TODO: for image
                                // FadeInImage(
                                //   image: NetworkImage(_controller.catList[index].categoryImage),
                                //   placeholder: AssetImage(
                                //       'images/gif-logo.gif'),
                                //   fit: BoxFit.cover,
                                // ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width / 2 -
                                          40,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                        child: Image.asset(
                                      'images/food.jpg',
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 120),
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey[300],width: 1)
                                  ),
                                  child: Center(child: Text("Order Now",style: TextStyle(fontSize: 10),)),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 13, top: 80),
                                  child: Text(
                                    _controller.catList[index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }
                }),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 10, right: 10),
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
              // sanitary list
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
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
                    return ListView.builder(
                        itemCount: _controller.productList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext contex, int index) {
                          return Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300],width: 1),
                                borderRadius: BorderRadius.circular(15),
                                color:colorlist[9-(index%10)]),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width / 2 -
                                          40,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      60,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    child: Container(
                                        child: Image.asset(
                                      'images/c.jpg',
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 8, top: 10, right: 5),
                                  width: MediaQuery.of(context).size.width / 2 -
                                      60,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          _controller.productList[index].name,
                                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width / 2 -
                                            60,
                                        padding: EdgeInsets.only(
                                            left: 5, top: 8, bottom: 15),
                                        child: Text(
                                          "৳"+_controller.productList[index].price,
                                          style: TextStyle(
                                            color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }
                }),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Product",
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
                height: MediaQuery.of(context).size.height * .6,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    itemBuilder: (BuildContext contex, int index) {
                      return Container(

                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 12),
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300],width: 1),
                            borderRadius: BorderRadius.circular(15),
                            color:colorlist[index%10]),
                        child: Row(
                          children: [
                            Container(
                              height:
                              MediaQuery.of(context).size.width / 2 -
                                  40,
                              width: MediaQuery.of(context).size.width / 2-20,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                child: Container(
                                    child: Image.asset(
                                      'images/c.jpg',
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 8, top: 10, right: 5),
                              width: MediaQuery.of(context).size.width / 2-20,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                     "product name name of product is as ",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 90,
                                        padding: EdgeInsets.only(
                                            left: 5, top: 8, bottom: 15),
                                        child: Text(
                                          "৳ 5000",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        width: 60,
                                        height:20,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all(color: Colors.grey[300],width: 1)
                                        ),
                                        child: Center(child: Text("View",style: TextStyle(fontSize: 10),)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
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
