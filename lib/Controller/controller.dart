import 'package:get/get.dart';
import 'package:happybuy/Model/CatList.dart';
import 'package:happybuy/Service/remote_service.dart';


class Controller extends GetxController{

  var isLoading = true.obs;
  var catList = List<ModelCatList>().obs;
  @override
  void onInit() {
    fetchCatList();
    // TODO: implement onInit
    super.onInit();
  }

  // call api for category
  void fetchCatList() async {
    try {
      isLoading(true);
      var data = await RemoteServices.getCategotyList();
      if (data != null) {
        catList.value = data;
      }
    } finally {
      isLoading(false);
    }
  }


}