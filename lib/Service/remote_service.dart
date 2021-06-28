import 'package:happybuy/Model/CartList.dart';
import 'package:happybuy/Model/ProductListModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class RemoteServices {
  static var client = http.Client();


  static Future<List<ModelCartList>> getCategotyList() async {
    String url ='https://foodapi.appstic.xyz/getallcategory';
    Uri strurl = Uri.parse(url);

    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      var data = jsonEncode(jsonString['data']) ;
      return modelCartListFromJson(data);
    } else {
      return null;
    }
  }

  static Future<List<ModelProductList>> getProductList() async {
    String url ='https://foodapi.appstic.xyz/getallproductdata';
    Uri strurl = Uri.parse(url);

    var response = await http.get(strurl);

    print(response.statusCode.toString() + "By getx");
    if (response.statusCode == 200) {
      var jsonString = jsonDecode(response.body);
      var data = jsonEncode(jsonString['data']) ;
      print(data);
      return modelProductListFromJson(data);
    } else {
      return null;
    }
  }


}