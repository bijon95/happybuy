import 'package:flutter/material.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:get/get.dart';
import 'package:happybuy/Helper/user_info.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final Controller _controller = Get.put(Controller());

  String token = "";
  UserInfo user = new UserInfo();
  Future getUserDataFromSharedPreference() async{



    Future<String> userName = user.getName();
    await userName.then((data) {
      token = data.toString();
      print(token);
      print("name print");
      _controller.fetchOrderList(token);
    },onError: (e) {
      print(e);
    });

  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.singleUser(token);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
