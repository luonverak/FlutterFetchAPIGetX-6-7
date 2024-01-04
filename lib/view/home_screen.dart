import 'package:flutter/material.dart';
import 'package:flutter_api/controller/product_controller.dart';
import 'package:get/get.dart';

import '../widget/item_product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Obx(
        () => Visibility(
          replacement: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.5,
              children: List.generate(
                productController.listProduct.length,
                (index) => itemProduct(
                  productController.listProduct[index],
                ),
              ),
            ),
          ),
          visible: productController.loading.value,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
