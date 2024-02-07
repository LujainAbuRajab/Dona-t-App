import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/product.dart';
import 'package:food_delivary_app/utils/app_colors.dart';

class ProductItem extends StatefulWidget {
  final Product dummyProduct;
  const ProductItem({
    super.key,
    required this.dummyProduct,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(widget.dummyProduct.imgUrl),
                ),
                Text(
                  widget.dummyProduct.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.dummyProduct.category.title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.lightGray,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 1, 8, 8),
                  child: Text(
                    '\$${widget.dummyProduct.price}',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary),
                  ),
                ),
                Positioned(
                  right: 4,
                  top: 4,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_rounded),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
