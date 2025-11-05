import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class FilterOptionsScreen extends StatelessWidget {
  const FilterOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Назначение')),
      body: ListView(
        children: [
          _buildOption(context, 'Очищение'),
          _buildOption(context, 'Увлажнение'),
          _buildOption(context, 'Регенерация'),
          _buildOption(context, 'Против морщин'),
          _buildOption(context, 'Защита от УФ'),
        ],
      ),
    );
  }

  Widget _buildOption(BuildContext context, String option) {
    return ListTile(
      title: Text(option),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductListScreen(filterName: 'Средства для $option'),
          ),
        );
      },
    );
  }
}
