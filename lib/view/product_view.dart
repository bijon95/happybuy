import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:happybuy/Helper/helper.dart';
import 'package:happybuy/Model/ProductListModel.dart';
import 'package:get/get.dart';
import 'package:happybuy/view/CartList.dart';
import 'package:happybuy/view_c/checkoutPage.dart';

class ProductView extends StatefulWidget {
  ModelProductList product;
  ProductView(this.product);
  @override
  _CreateCategoryState createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<ProductView> {
  final Controller _controller = Get.put(Controller());

  nothing(){}
  List<String> imgList = List();
  addImageInList(){


  widget.product.img1 != null ? imgList.add(widget.product.img1) :  nothing();
  widget.product.img2 != null ? imgList.add(widget.product.img2) :  nothing();
  widget.product.img3 != null ? imgList.add(widget.product.img3) :  nothing();
  widget.product.img4 != null ? imgList.add(widget.product.img4) :  nothing();
  widget.product.img5 != null ? imgList.add(widget.product.img5) :  nothing();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   addImageInList();
  }

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
                          width: MediaQuery.of(context).size.width,
                          child: CarouselSlider.builder(
                            itemCount: imgList.length,
                            itemBuilder: (BuildContext contex, int index, int realIdx){
                              return Container(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                child: FadeInImage(
                                  image: NetworkImage(Helper.baseurl+imgList[index]
                                  ),
                                  placeholder: AssetImage('images/gif-logo.gif'),
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                            //Slider Container properties
                            options: CarouselOptions(
                              autoPlay: true,
                              height: 300,
                              viewportFraction: 1.0,
                              enlargeCenterPage: false,

                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 40, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                               icon:Icon(Icons.arrow_back_ios,),
                                color: Colors.black,
                                onPressed: (){
                                 Navigator.pop(context);
                                },
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
                          child: Text("\$"+widget.product.price,
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
                      child: Text(widget.product.name,
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
                          child: Text(widget.product.description,
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
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    width: 80,
                    child: Center(
                      child: Column(
                        children: [
                          IconButton(
                          icon:Icon( Icons.shopping_cart_outlined,size: 24,),
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>CheckoutPageView()));
                            },
                          ),
                          // Text(
                          //   "Cart",
                          //   style: TextStyle(fontSize: 12),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
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
                    onTap: (){
                    //  _controller.addProductToCart(widget.product);
                    //  _controller.catList.value.add(widget.product);
                    },
                  ),
                  GestureDetector(
                    child: Container(
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
                    ),
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>CartList()));
                    },
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
