import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/product.dart';
import 'package:food_delivary_app/utils/app_colors.dart';
import 'package:food_delivary_app/views/pages/widgets/counter_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightPink.withOpacity(0.2),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_rounded),
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightPink.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                    top: 10,
                    right: 50,
                    left: 50,
                  ),
                  child: Image.asset(
                    product.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.darkPink,
                                ),
                          ),
                          Text(
                            product.category.title,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightGray,
                                ),
                          ),
                        ],
                      ),
                      CounterWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
