import 'package:flutter/material.dart';
import 'package:flutter_api/model/product_model.dart';

Widget itemProduct(ProductModel model) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 3,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: SizedBox(
            height: 180,
            child: Image.network(model.image),
          ),
        ),
        Text(
          model.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          model.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '\$ ${model.price}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );
}
