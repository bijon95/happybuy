import 'package:flutter/material.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductView extends StatefulWidget {
  @override
  _CreateCategoryState createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height - 60,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
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
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('iOS'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Desktop'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Web'),
                              )
                            ],
                            //Slider Container properties
                            options: CarouselOptions(
                              autoPlay: true,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //price
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 10),
                          child: Text("",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.red)),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 10),
                          child: Text("\$ 120",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.red)),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 10),
                      child: Text("Product this is product name Name",
                          style: TextStyle(fontSize: 24)),
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 20, top: 15, bottom: 10),
                          child: Text("See Description",
                              style: TextStyle(fontSize: 18)),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(right: 20, top: 15, bottom: 10),
                          child: Icon(Icons.arrow_forward_ios_outlined),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.grey[300],
            ),
            Container(
              height: 59,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    width: 80,
                    child: Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.storefront_outlined,
                            size: 20,
                          ),
                          Text(
                            "Store",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                        child: Text(
                      "Add to Card",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                        child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
