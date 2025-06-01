import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class FastMovingItemTile extends StatelessWidget {
  final String imageUrl;
  final String productName;

  const FastMovingItemTile({
    super.key,
    required this.imageUrl,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 15,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(productName, style: const TextStyle(color: AppColors.black)),
    );
  }
}
