import 'package:get/get.dart';
import 'package:happybuy/Model/CatList.dart';
import 'package:happybuy/Model/ProductListModel.dart';
import 'package:happybuy/Service/remote_service.dart';


class Controller extends GetxController{

  var isLoading = true.obs;
  var isLoadingProduct = true.obs;
  var catList = List<ModelCatList>().obs;
  var productList = List<ModelProductList>().obs;
  @override
  void onInit() {
    fetchCatList();
    fetchProductList();
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

  // call api for category
  void fetchProductList() async {
    try {
      isLoadingProduct(true);
      var data = await RemoteServices.getProductList();
      if (data != null) {
        productList.value = data;
      }
    } finally {
      isLoadingProduct(false);
    }
  }


}