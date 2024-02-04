import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/category.dart';
import 'package:food_delivary_app/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/images/Banner.jpg')),
          const SizedBox(height: 12),
          const TextField(
            //u should remove the const to avoid problems
            decoration: InputDecoration(
              labelText: 'Find your donat!',
              prefixIcon:  Icon(Icons.search_rounded),              
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 110,
            child: ListView.builder(
              itemCount: dummyCategories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:  (context, index) {
                final dummyCategory = dummyCategories[index];
                return Card(
                  color: Colors.white,
                  child: Padding(
                    padding:const  EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          dummyCategory.imgUrl,
                          width: 50,
                        ),
                        const SizedBox(height: 4,),
                        Text(dummyCategory.title),
                      ],
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
