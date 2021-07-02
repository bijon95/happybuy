import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  final String name = 'name';
  final String type = 'type';

  Future<void> saveLoginDataToSharedPreference( String type, String name, ) async{
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(this.type, type);
    preferences.setString(this.name, name);
  }


  Future<String> getName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String userName ;
    userName = pref.getString(this.name) ?? null;
    return userName;
  }

  Future<String> getType() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String userType ;
    userType = pref.getString(this.type) ?? "1";
    return userType;
  }

}