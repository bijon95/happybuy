import 'package:get/get.dart';
import 'package:happybuy/Model/CartList.dart';
import 'package:happybuy/Model/ProductListModel.dart';
import 'package:happybuy/Service/remote_service.dart';


class Controller extends GetxController{

  var isLoading = true.obs;
  var isLoadingProduct = true.obs;
  var catList = List<ModelCatList>.empty().obs;
  var productList = List<ModelProductList>.empty().obs;
  var cartList = List<ModelProductList>.empty().obs;
  @override
  void onInit() {
    fetchCatList();
    fetchProductList();
    // TODO: implement onInit
    super.onInit();
  }

  // void addProductToCart(ModelProductList product) {
  //   try {
  //     if (_isItemAlreadyAdded(product)) {
  //       Get.snackbar("Check your cart", "${product.name} is already added");
  //     } else {
  //       print("added");
  //       catList.value.add(product);
  //       // String itemId = Uuid().toString();
  //       // userController.updateUserData({
  //       //   "cart": FieldValue.arrayUnion([
  //       //     {
  //       //       "id": itemId,
  //       //       "productId": product.id,
  //       //       "name": product.name,
  //       //       "quantity": 1,
  //       //       "price": product.price,
  //       //       "image": product.image,
  //       //       "cost": product.price
  //       //     }
  //       //   ])
  //       // });
  //       Get.snackbar("Item added", "${product.name} was added to your cart");
  //     }
  //   } catch (e) {
  //     Get.snackbar("Error", "Cannot add this item");
  //
  //   }
  // }

  bool _isItemAlreadyAdded(ModelProductList product) =>
      catList.where((item) => item.id == product.id)
          .isNotEmpty;

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