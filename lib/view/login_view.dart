import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happybuy/Helper/helper.dart';
import 'package:happybuy/Helper/user_info.dart';
import 'package:happybuy/view/dashboard.dart';
import 'package:happybuy/view/registration_view.dart';
import 'package:happybuy/view_c/Dashboard_client.dart';
import 'package:happybuy/view_c/Dashboard_client2.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // FirebaseMessaging firebaseMessaging = FirebaseMessaging();

  bool _isLoading = false;
  String msg = "";

  // Login view
  Future loginRequest() async {
    setState(() {});
    _isLoading = true;
    Uri url = Uri.parse(Helper.baseurl + "user_login");
    Map data = {
      "phone": user.text,
      "password": pass.text,
    };
    //encode Map to JSON
    var body = json.encode(data);
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: body,
    );
    if (response.statusCode == 200) {
      _isLoading = false;
      var jsonString = jsonDecode(response.body);
      msg = jsonString["msg"];
      print(response.body);
      print(jsonString["status"]);
      if (jsonString["status"] == 'success') {
        String type = jsonString["data"]["type"];
        String id = jsonString["data"]["id"].toString();
        print(jsonString);

        print(id);
        UserInfo user = new UserInfo();
        user.saveLoginDataToSharedPreference(type, id);
        if(type=='user'){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashboardClient()));
        }
        else if(type=='admin'){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AdminDashboard()));
        }

      }

      setState(() {});

      return null;
    } else {
//show error message
      return null;
    }
  }

  String nameKey = "_key_name";

  Future<void> saveData(String msg) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(nameKey, msg);
  }

  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  // ignore: missing_return

  Widget getPageView(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: new Container(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: new Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                margin: EdgeInsets.only(right: 0, left: 0),
                child: new Wrap(
                  children: <Widget>[
                    Center(
                      child: Container(
                        alignment: Alignment(-1.0, 0.0),
                        padding: EdgeInsets.fromLTRB(30, 44, 30, 10),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Eina_regular',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        //color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: TextField(
                          controller: user,
                          keyboardType: TextInputType.phone,
                          decoration: new InputDecoration(
                            labelText: 'Phone Number',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        //color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: TextField(
                          controller: pass,
                          obscureText: true,
                          decoration: new InputDecoration(
                            labelText: 'Password',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: _isLoading
                            ? CircularProgressIndicator()
                            : Text(
                                msg,
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.green),
                              ),
                      ),
                    ),
                    Container(
                      //color: Colors.blueAccent,
                      width: double.infinity,

                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      height: 80,
                      child: RaisedButton(
                        //padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        color: Color.fromRGBO(12, 53, 238, 10),
                        onPressed: () {
                          loginRequest();
                        }, //
                        child: new Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'Eina_regular',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   //color: Colors.blueAccent,
                    //   width: double.infinity,
                    //
                    //   padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    //   height: 80,
                    //   child: RaisedButton(
                    //     //padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    //     color: Color.fromRGBO(12, 53, 238, 10),
                    //     onPressed: () {
                    //       // Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardClient()));
                    //     }, //
                    //     child: new Text(
                    //       "Login for Admin",
                    //       style: TextStyle(
                    //         fontFamily: 'Eina_regular',
                    //         fontSize: 14.0,
                    //         fontWeight: FontWeight.w600,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          "Do not have any Account ?",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                    ),
                    Center(
                      child: Container(
                        //color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: SizedBox(
                          height: 118,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Title(color: Colors.blue, child: Text("Happy Buy")),
        ),
        body: getPageView(context));
  }
}
