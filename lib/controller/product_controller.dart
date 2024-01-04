import 'package:flutter_api/model/product_model.dart';
import 'package:get/get.dart';
import '../service/service_api.dart';

class ProductController extends GetxController {
  RxList<ProductModel> listProduct = <ProductModel>[].obs;
  RxBool loading = true.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future getData() async {
    try {
      var product = await ServiceAPI().fetchAPI();
      if (product != null) {
        listProduct.value = product;
      }
      loading(true);
    } finally {
      loading(false);
    }
    update();
  }
}
