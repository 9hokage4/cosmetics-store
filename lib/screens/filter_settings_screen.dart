import 'package:flutter/material.dart';

class FilterSettingsScreen extends StatefulWidget {
  const FilterSettingsScreen({super.key});

  @override
  State<FilterSettingsScreen> createState() => _FilterSettingsScreenState();
}

class _FilterSettingsScreenState extends State<FilterSettingsScreen> {
  // Состояния для выбранных значений
  String _selectedSkinType = 'Жирная';
  String _selectedEffect = 'Увлажнение';
  String _selectedLine = 'Все';

  // Списки вариантов
  final List<String> _skinTypes = [
    'Жирная',
    'Комбинированная',
    'Нормальная',
    'Сухая',
  ];
  final List<String> _effects = [
    'Увлажнение',
    'Очищение',
    'Регенерация',
    'Против морщин',
  ];
  final List<String> _lines = ['Все', 'Unstress', 'Muse', 'BioPhyto'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Фильтры')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Сортировка
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Сортировка'), Text('По популярности')],
          ),
          const Divider(),

          // Тип кожи
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Тип кожи'),
              DropdownButton<String>(
                value: _selectedSkinType,
                items: _skinTypes.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedSkinType = newValue!;
                  });
                },
              ),
            ],
          ),
          const Divider(),

          // Эффект средства
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Эффект средства'),
              DropdownButton<String>(
                value: _selectedEffect,
                items: _effects.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedEffect = newValue!;
                  });
                },
              ),
            ],
          ),
          const Divider(),

          // Линия косметики
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Линия косметики'),
              DropdownButton<String>(
                value: _selectedLine,
                items: _lines.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLine = newValue!;
                  });
                },
              ),
            ],
          ),
          const Divider(),

          // Кнопка "Применить фильтры"
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                // Передай выбранные фильтры обратно в ProductListScreen
                Navigator.pop(context, {
                  'skinType': _selectedSkinType,
                  'effect': _selectedEffect,
                  'line': _selectedLine,
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Применить фильтры'),
            ),
          ),
        ],
      ),
    );
  }
}
