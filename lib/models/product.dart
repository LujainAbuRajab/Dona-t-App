import 'package:food_delivary_app/models/category.dart';


class Product {
  final String id;
  final String name;
  final String imgUrl;
  final String description;
  final double price;
  final Category category;


  Product({
    required this.id,
    required this.name,
    required this.imgUrl,
    this.description =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    required this.price,
    required this.category,
  });
}

List<Product> favProducts = [];

List<Product> dummyProducts = [
  Product(
      id: '1',
      category: dummyCategories[0],
      name: 'Vanilla',
      imgUrl:
          'assets/images/Vanilla.png',
      price: 6.99),
  Product(
      id: '2',
      category: dummyCategories[0],
      name: 'Strawberry',
      imgUrl:
          'assets/images/red.png',
      price: 6.99),
  Product(
      id: '13',
      category: dummyCategories[0],
      name: 'Blue Ocean',
      imgUrl:
          'assets/images/donutblue.png',
      price: 6.99),
      Product(
      id: '10',
      category: dummyCategories[0],
      name: 'Ice King',
      imgUrl:
          'assets/images/donatfrozen.png',
      price: 6.99),
      Product(
      id: '7',
      category: dummyCategories[0],
      name: 'Chocolate',
      imgUrl:
          'assets/images/donutbrown.png',
      price: 6.99),
      Product(
      id: '4',
      category: dummyCategories[0],
      name: 'Bestashbo',
      imgUrl:
          'assets/images/donutgreen.png',
      price: 6.99),
      Product(
      id: '5',
      category: dummyCategories[0],
      name: 'Blueberry',
      imgUrl:
          'assets/images/donutpink.png',
      price: 6.99),
      Product(
      id: '6',
      category: dummyCategories[0],
      name: 'Heart Blueberry',
      imgUrl:
          'assets/images/heart.png',
      price: 6.99),
      Product(
      id: '3',
      category: dummyCategories[0],
      name: 'Perple World',
      imgUrl:
          'assets/images/perpleworld.png',
      price: 6.99),
      Product(
      id: '8',
      category: dummyCategories[0],
      name: 'Pistachio & Chocolate',
      imgUrl:
          'assets/images/Pistachioandchocolate.png',
      price: 6.99),
      Product(
      id: '9',
      category: dummyCategories[0],
      name: 'Purplew With Sprinkles',
      imgUrl:
          'assets/images/Purplewithsprinkles.png',
      price: 6.99),
      
      Product(
      id: '11',
      category: dummyCategories[0],
      name: 'Stuffed Donut',
      imgUrl:
          'assets/images/Stuffeddonut.png',
      price: 6.99),
      Product(
      id: '12',
      category: dummyCategories[0],
      name: 'Sugar & Cinnamon',
      imgUrl:
          'assets/images/Sugarandcinnamon.png',
      price: 6.99),
      
      Product(
      id: '14',
      category: dummyCategories[0],
      name: 'yellow',
      imgUrl:
          'assets/images/yellow.png',
      price: 6.99),
      Product(
      id: '15',
      category: dummyCategories[0],
      name: 'Yellow with Sprinkles',
      imgUrl:
          'assets/images/Yellowwithsprinkles.png',
      price: 6.99),
      Product(
      id: '16',
      category: dummyCategories[1],
      name: 'hot',
      imgUrl:
          'assets/images/hotchoclet.png',
      price: 6.99),
      Product(
      id: '17',
      category: dummyCategories[1],
      name: 'orange',
      imgUrl:
          'assets/images/orande.png',
      price: 6.99),
      Product(
      id: '18',
      category: dummyCategories[1],
      name: 'tea',
      imgUrl:
          'assets/images/tea.png',
      price: 6.99),
      Product(
      id: '19',
      category: dummyCategories[1],
      name: 'vanilla drenk',
      imgUrl:
          'assets/images/vanilladrenk.png',
      price: 6.99),
      Product(
      id: '20',
      category: dummyCategories[1],
      name: 'yansoon',
      imgUrl:
          'assets/images/yanson.png',
      price: 6.99),
      
      
];
