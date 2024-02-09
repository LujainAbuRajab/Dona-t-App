import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/category.dart';
import 'package:food_delivary_app/models/product.dart';
import 'package:food_delivary_app/utils/app_colors.dart';
import 'package:food_delivary_app/views/pages/product_details_page.dart';
import 'package:food_delivary_app/views/pages/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategoryId;
  late List<Product> filteredProducts;

  @override
  void initState() {
    super.initState();
    filteredProducts = dummyProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/images/Banner.jpg')),
            const SizedBox(height: 12),
            const TextField(
              //u should remove the const to avoid problems
              decoration: InputDecoration(
                helperStyle: TextStyle(
                  color: AppColors.lightPink,
                ),
                labelText: 'Find your donut!',
                prefixIcon: Icon(Icons.search_rounded),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 110,
              child: ListView.builder(
                  itemCount: dummyCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final dummyCategory = dummyCategories[index];
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (selectedCategoryId != null &&
                              selectedCategoryId == dummyCategory.id) {
                            selectedCategoryId = null;
                            filteredProducts = dummyProducts;
                          } else {
                            selectedCategoryId = dummyCategory.id;
                            filteredProducts = dummyProducts
                                .where((product) =>
                                    product.category.id == selectedCategoryId)
                                .toList();
                          }
                        });
                      },
                      child: Card(
                        color: selectedCategoryId == dummyCategory.id
                            ? AppColors.primary
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                dummyCategory.imgUrl,
                                width: 50,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                dummyCategory.title,
                                style: TextStyle(
                                  color: selectedCategoryId == dummyCategory.id
                                      ? Theme.of(context).canvasColor
                                      : AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 12),
            if (filteredProducts.isNotEmpty)
              GridView.builder(
                  itemCount: filteredProducts.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: ((context, index) {
                    final dummyProduct = filteredProducts[index];
                    return InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  ProductDetailsPage(product: dummyProduct),),),
                        child: ProductItem(dummyProduct: dummyProduct));
                  })),
            if (filteredProducts.isEmpty)
              const Center(child: Text('No Products Found')),
          ],
        ),
      ),
    );
  }
}
