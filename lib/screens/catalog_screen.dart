import 'package:cosmetics_store/screens/filter_options_screen.dart';
import 'package:cosmetics_store/screens/filter_type_screen.dart';
import 'package:flutter/material.dart';
import 'filter_products_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          // Поиск
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Поиск',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          _buildFilterSection(context),

          _buildTestSection(context),
        ],
      ),
    );
  }

  Widget _buildFilterSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: const Text('Назначение'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilterOptionsScreen()),
            );
          },
        ),
        const SizedBox(height: 8),
        _buildFilterItem(context, 'Тип средства'),
        ListTile(
          title: const Text('Тип кожи'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilterTypeScreen()),
            );
          },
        ),
        _buildFilterItem(context, 'Линия косметики'),
        _buildFilterItem(context, 'Наборы'),
        _buildFilterItem(context, 'Акции', hasBadge: true),
        _buildFilterItem(context, 'Консультация с косметологом'),
      ],
    );
  }

  Widget _buildFilterItem(
    BuildContext context,
    String title, {
    bool hasBadge = false,
  }) {
    return ListTile(
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (hasBadge) const Icon(Icons.star, color: Colors.pink, size: 18),
          const SizedBox(width: 4),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FilterProductsScreen(filterName: title),
          ),
        );
      },
    );
  }

  Widget _buildTestSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Составим схему идеального домашнего ухода',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('10 вопросов о вашей коже'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
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
    );
  }
}
