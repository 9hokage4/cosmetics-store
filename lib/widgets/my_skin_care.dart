import 'package:cosmetics_store/widgets/category_slider.dart';
import 'package:flutter/material.dart';

class MySkinCare extends StatelessWidget {
  final String backgroundImagePath;
  MySkinCare({super.key, required this.backgroundImagePath});

  final List<Map<String, String>> listCare = [
    {'image': 'assets/images/placeholder.png', 'name': 'Демакияж'},
    {'image': 'assets/images/placeholder.png', 'name': 'Очищение'},
    {'image': 'assets/images/placeholder.png', 'name': 'Сыворотка'},
    {'image': 'assets/images/placeholder.png', 'name': 'Дневной крем'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Моя схема домашнего ухода',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listCare.length,
                      itemBuilder: (context, index) {
                        final itemCare = listCare[index];
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: CategorySlider(
                            categoryImage: itemCare['image']!,
                            categoryName: itemCare['name']!,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Ответьте на 10 вопросов, и мы подберем нужный уход',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const Text('Пройти тест'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
