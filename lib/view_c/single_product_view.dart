import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happybuy/Controller/controller.dart';

class SingleProductView extends StatefulWidget {
  int passIndex;
  SingleProductView(this.passIndex);

  @override
  _SingleProductViewState createState() => _SingleProductViewState();
}

class _SingleProductViewState extends State<SingleProductView> {

  final Controller _controller = Get.put(Controller());
  int index;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    index = widget.passIndex;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Happy Buy",style: TextStyle(fontSize: 14),),
        centerTitle: false,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            tooltip: 'Cart',
            onPressed: (){

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //Slider
              Container(
                height: 20,
              ),
              Image.asset(
                'images/c.jpg',
                fit: BoxFit.fill,
                width: 100 * MediaQuery.of(context).devicePixelRatio,
                height: 100 * MediaQuery.of(context).devicePixelRatio,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _controller.productList[index].name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                    Text(
                      "৳"+_controller.productList[index].price,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,size: 18,color: Color(0xFFf5c44b),),
                        Icon(Icons.star,size: 18,color: Color(0xFFf5c44b),),
                        Icon(Icons.star,size: 18,color: Color(0xFFf5c44b),),
                        Icon(Icons.star_border,size: 18),
                        Icon(Icons.star_border,size: 18),
                      ],
                    ),
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
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Supplier: ",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                        Text(
                          "Happy Buy",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,  // red as border color
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Text(
                        " 16% Off ",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,  // red as border color
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipOval(
                      child: Material(
                        color: Colors.white, // Button color
                        child: InkWell(
                          splashColor: Colors.green, // Splash color
                          onTap: () {},
                          child: SizedBox(width: 56, height: 56, child: Icon(Icons.add)),
                        ),
                      ),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
