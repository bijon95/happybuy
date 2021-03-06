
import 'package:flutter/material.dart';
import 'package:happybuy/view/SliderEdit.dart';
import 'package:happybuy/view/category_list.dart';
import 'package:happybuy/view/dashboard.dart';
import 'package:happybuy/view/login_view.dart';
import 'package:happybuy/view_c/EditProfile.dart';
import 'package:happybuy/view_c/OrderList.dart';
import '../view_c/product_list.dart';
import 'package:happybuy/view_c/checkoutPage.dart';
import 'package:happybuy/view_c/order_tracking.dart';
import 'package:happybuy/view_c/rating_us.dart';
import 'package:happybuy/view_c/single_order_traking.dart';
import 'package:happybuy/view_c/terms_conditions.dart';
import 'package:happybuy/view_c/write_review.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';


class MainDrawer extends StatelessWidget {

  Future<void> removeData(context) async {
    String nameKey = "_key_name";
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    await sharedPreference
      ..remove(nameKey);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            SizedBox(
              height: 40,
            ),


              ListTile(
                contentPadding: EdgeInsets.only(bottom:0.0,left: 15.0,right: 14.0),
                title: Text('Cart'),
                leading: Icon(
                  Icons.shopping_cart_outlined,
                  size: 24.0,
                ),
                onTap:(){
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CheckoutPageView()));
                  }
              ),
              ListTile(
                contentPadding: EdgeInsets.only(top:0.0,left: 15.0,right: 14.0),
                title: Text('My Orders'),
                  leading: Icon(
                    Icons.list_alt_rounded,
                    size: 24.0,
                  ),
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => OrderTracking()));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderList()));
                }
              ),
              ListTile(
                  title: Text('To Review'),
                  leading: Icon(
                    Icons.mode_edit,
                    size: 24.0,
                  ),
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Write_Review_PageView()));
                  }
              ),
              ListTile(
                  contentPadding: EdgeInsets.only(bottom:0.0,left: 15.0,right: 14.0),
                  title: Text('My Profile'),
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    size: 24.0,
                  ),
                  onTap:(){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => EditProfile()));
                  }
              ),
              ListTile(
                  title: Text('Terms & Conditions'),
                  leading: Icon(
                    Icons.document_scanner_outlined,
                    size: 24.0,
                  ),
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Terms_Conditions_PageView()));
                  }
              ),



              ListTile(
                leading:    Icon( Icons.logout,color:Colors.red,size: 24,),
                title: Text('Logout'),
                onTap: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.clear();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),

              SizedBox(height: 40.0),
              ListTile(
                leading: Icon(
                  Icons.call,
                  size: 24.0,
                  color: Colors.green,
                ),
                title: Text('Whatsapp'),
                onTap: () {
                    launch("https://wa.me/+8801303678069/?text=${Uri.parse("From Happy Buy App")}");
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.mail_outline,
                  size: 24.0,
                  color: Colors.red,
                ),
                title: Text('Email'),
                onTap: (){
                  launch('mailto:shorifulislam3300000@gmail.com?subject=From App&body=Test Email');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.call,
                  size: 24.0,
                  color: Colors.green,
                ),
                title: Text('Call'),
                onTap: (){
                  launch("tel://+8801725583154");
                },
              ),


            ],
          ),
        ));
  }


}