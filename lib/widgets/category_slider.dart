import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  final String categoryImage;
  final String categoryName;
  const CategorySlider({
    super.key,
    required this.categoryImage,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: Image.asset(
            categoryImage,
            height: 120,
            width: 120,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 8),
        Text(categoryName),
      ],
    );
  }
}
