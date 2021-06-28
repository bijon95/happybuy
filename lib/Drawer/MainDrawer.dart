
import 'package:flutter/material.dart';
import 'package:happybuy/view/category_list.dart';
import 'package:happybuy/view/dashboard.dart';
import 'package:happybuy/view/login_view.dart';
import 'package:happybuy/view/product_list.dart';
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
                title: Text('Today Orders'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                ),
                onTap:(){
    Navigator.push(
    context, MaterialPageRoute(builder: (context) =>Dashboard()));
    }

              ),
              ListTile(
                contentPadding: EdgeInsets.only(top:0.0,left: 15.0,right: 14.0),
                title: Text('Product List'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                ),
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>ProductList()));
                }
              ),
              ListTile(
                title: Text('Category List'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                ),
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>CategoryList()));
                }
              ),

              SizedBox(height: 10.0),
              ListTile(
                title: Text('Help?'),
                onTap: (){
                  launch("tel://+8801750118555");
                },
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  removeData(context);
                },
                child: Row(children: [
                  SizedBox(width: 10,),
                  Icon( Icons.info_outline,size: 18,),
                  SizedBox(width: 10,),
                  Text('Log Out'),
                ],),
              ),
            

            ],
          ),
        ));
  }


}