import 'package:happybuy/Helper/helper.dart';
import 'package:happybuy/Model/CartList.dart';
import 'package:happybuy/Model/OrderModel.dart';
import 'package:happybuy/Model/ProductListModel.dart';
import 'package:happybuy/Model/SliderModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class RemoteServices {
  static var client = http.Client();


  static Future<List<ModelCatList>> getCategotyList() async {
    String url =Helper.baseurl+'getallcategory';
    Uri strurl = Uri.parse(url);

    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      var data = jsonEncode(jsonString['data']) ;
      print(data);
      return modelCartListFromJson(data);
    } else {
      return null;
    }
  }

  static Future<List<ModelProductList>> getProductList() async {
    String url =Helper.baseurl+'getallproductdata';
    Uri strurl = Uri.parse(url);

    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx product");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      var data = jsonEncode(jsonString['data']) ;
      print(data);
      return modelProductListFromJson(data);
    } else {
      return null;
    }
  }

  static Future<List<SliderModel>> getSliderList() async {
    String url =Helper.baseurl+'getallsliders';
    Uri strurl = Uri.parse(url);

    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx slider");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      var data = jsonEncode(jsonString['data']) ;
      print(data);
      return sliderModelFromJson(data);
    } else {
      return null;
    }
  }

  static Future<List<ModelProductList>> getCatProductList(catID) async {
    print("Call remote server "+catID.toString());
    String url =Helper.baseurl+'catproductdata';
    Uri strurl = Uri.parse(url);
    Map data = {
      "category_id" :catID.toString()
    };

    var response = await http.post(strurl, body:data);

    print(response.statusCode.toString() + "By getx slider");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      var data = jsonEncode(jsonString['data']) ;
      print(jsonString);
      return modelProductListFromJson(data);
    } else {
      return null;
    }
  }
  static Future<List<ModelOrder>> getOrderList(userID) async {
    String url =Helper.baseurl+'userOrders/'+userID;
    Uri strurl = Uri.parse(url);
    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx order");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      print(jsonString);
      return orderModelFromJson(response.body);
    } else {
      return null;
    }
  }
  static Future<List<ModelOrder>> getAllOrderList() async {
    String url =Helper.baseurl+'orders';
    Uri strurl = Uri.parse(url);
    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx order");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      print(jsonString);
      return orderModelFromJson(response.body);
    } else {
      return null;
    }
  }


}