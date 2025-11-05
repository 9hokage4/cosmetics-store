import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class FilterProductsScreen extends StatelessWidget {
  final String filterName;

  const FilterProductsScreen({super.key, required this.filterName});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'category': 'Сыворотка',
        'title': 'Unstress Total Serenity Serum',
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
        'title': 'Muse Supreme Cream',
        'price': '15 201',
        'imagePath': 'assets/images/placeholder.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(filterName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Товары: $filterName',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('${products.length} товаров'),
          const SizedBox(height: 16),

          // Фильтры (внутри списка)
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _FilterChip(label: 'Очищение'),
                _FilterChip(label: 'Увлажнение'),
                _FilterChip(label: 'Регенерация'),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Слайдер товаров
          SizedBox(
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
        ],
      ),
    );
  }
}

// Вспомогательный виджет для чипа фильтра
class _FilterChip extends StatelessWidget {
  final String label;

  const _FilterChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label),
    );
  }
}
