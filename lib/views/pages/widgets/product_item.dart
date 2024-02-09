import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/product.dart';
import 'package:food_delivary_app/utils/app_colors.dart';

class ProductItem extends StatefulWidget {
  final Product dummyProduct;
  const ProductItem({
    Key? key,
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
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 1),
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
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: AppColors.gray,
                      ),
                ),
                Text(
                  '\$${widget.dummyProduct.price}',
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: Theme.of(context).primaryColor,
                    ),
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
