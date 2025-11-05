import 'package:cosmetics_store/widgets/category_slider.dart';
import 'package:cosmetics_store/widgets/my_skin_care.dart';
import 'package:cosmetics_store/widgets/product_card.dart';
import 'package:cosmetics_store/widgets/sale_product_card.dart';
import 'package:flutter/material.dart';
import 'package:cosmetics_store/widgets/static_banner.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categoryes = [
      {'name': 'Наборы', 'imagePath': 'assets/images/placeholder.png'},
      {'name': 'Для лица', 'imagePath': 'assets/images/placeholder.png'},
      {'name': 'Для глаз', 'imagePath': 'assets/images/placeholder.png'},
      {'name': 'Для тела', 'imagePath': 'assets/images/placeholder.png'},
      {'name': 'Умывание', 'imagePath': 'assets/images/placeholder.png'},
    ];

    List<Map<String, String>> products = [
      {
        'category': 'Сыворотка',
        'title': 'Unsress Total Serenity Serum',
        'price': '10 195',
        'imagePath': 'assets/images/placeholder.png',
      },
      {
        'category': 'Тоник',
        'title': 'Unstress Revitalizing Toner',
        'price': '3095',
        'imagePath': 'assets/images/placeholder.png',
      },
      {
        'category': 'Крем',
        'title': 'Восстанавливает кожу рук от сухости',
        'price': '21 201',
        'imagePath': 'assets/images/placeholder.png',
      },
    ];

    List<Map<String, String>> setProducts = [
      {
        'category': 'Сыворотка',
        'name': 'Muse Serum Sepreme',
        'newPrice': '10 195',
        'oldPrice': '10 195',
        'image': 'assets/images/placeholder.png',
        'discount': '',
      },
      {
        'category': 'Крем',
        'name': 'Unstress Reviralizing Toner',
        'newPrice': '1595',
        'oldPrice': '3195',
        'image': 'assets/images/placeholder.png',
        'discount': '1 + 1',
      },
      {
        'category': 'Тонер',
        'name': 'Unstress Reviralizing Toner',
        'newPrice': '3095',
        'oldPrice': '11 195',
        'image': 'assets/images/placeholder.png',
        'discount': '1 + 1',
      },
    ];

    final List<String> buttons = [
      'Для очищения',
      'Для увлаженения',
      'Для питания',
      'Для омоложения',
    ];

    List<Map<String, String>> hits = [
      {
        'category': 'Сыворотка',
        'title': 'Forever Young - Total Renewal Serum',
        'price': '10 195',
        'imagePath': 'assets/images/placeholder.png',
      },
      {
        'category': 'Осветляющая маска',
        'title': 'Illustios Mask',
        'price': '1595',
        'imagePath': 'assets/images/placeholder.png',
      },
      {
        'category': 'Тоник',
        'title': 'Unstress Revitalizing Toner',
        'price': '3095',
        'imagePath': 'assets/images/placeholder.png',
      },
    ];

    return ListView(
      children: [
        StaticBanner(bannerImage: 'assets/images/borderImage.png'),
        SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: categoryes.length,
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
              final category = categoryes[index];
              return Container(
                margin: const EdgeInsets.all(5),
                child: CategorySlider(
                  categoryImage: category['imagePath']!,
                  categoryName: category['name']!,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsetsGeometry.only(left: 8),
          child: const Text("Новинки", style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: const EdgeInsetsGeometry.only(left: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 160,
              height: 6,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 163, 253, 246),
                      const Color.fromARGB(255, 23, 245, 208),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsetsGeometry.only(left: 8),
          child: SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  imagePath: product['imagePath']!,
                  category: product['category']!,
                  title: product['title']!,
                  price: product['price']!,
                );
              },
            ),
          ),
        ),
        MySkinCare(backgroundImagePath: 'assets/images/ScinCare.png'),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsetsGeometry.only(left: 8),
          child: const Text('Акции', style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: const EdgeInsetsGeometry.only(left: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 160,
              height: 6,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 253, 163, 230),
                      const Color.fromARGB(255, 245, 23, 160),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsetsGeometry.only(left: 8),
          child: SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: setProducts.length,
              itemBuilder: (contex, index) {
                final setProduct = setProducts[index];
                return SaleProductCard(
                  imagePath: setProduct['image']!,
                  discount: setProduct['discount']!,
                  oldPrice: setProduct['oldPrice']!,
                  newPrice: setProduct['newPrice']!,
                  category: setProduct['category']!,
                  name: setProduct['name']!,
                );
              },
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 8),
          child: SizedBox(
            height: 180,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.5,
              ),
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  child: Text(buttons[index]),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsetsGeometry.only(left: 8),
          child: const Text("Хиты", style: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(left: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 160,
              height: 6,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 247, 161, 2),
                      const Color.fromARGB(255, 250, 197, 100),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),
        Padding(
          padding: EdgeInsetsGeometry.only(left: 8),
          child: SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hits.length,
              itemBuilder: (context, index) {
                final hit = hits[index];
                return ProductCard(
                  imagePath: hit['imagePath']!,
                  category: hit['category']!,
                  title: hit['title']!,
                  price: hit['price']!,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
