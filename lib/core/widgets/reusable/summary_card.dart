import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class SummaryCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color backgroundColor;
  final double width;
  final double height;

  const SummaryCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.backgroundColor = AppColors.lightBlue,
    this.width = 200,
    this.height = 120,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primaryBlue),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: AppColors.gray),
          ),
        ],
      ),
    );
  }
}
