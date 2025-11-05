import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class FilterTypeScreen extends StatelessWidget {
  const FilterTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('По типу кожи')),
      body: ListView(
        children: [
          _buildTypeItem(context, 'Жирная'),
          _buildTypeItem(context, 'Комбинированная'),
          _buildTypeItem(context, 'Нормальная'),
          _buildTypeItem(context, 'Сухая'),
          _buildTypeItem(context, 'Любой тип'),
        ],
      ),
    );
  }

  Widget _buildTypeItem(BuildContext context, String type) {
    return ListTile(
      title: Text(type),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductListScreen(filterName: 'Средства для $type кожи'),
          ),
        );
      },
    );
  }
}
