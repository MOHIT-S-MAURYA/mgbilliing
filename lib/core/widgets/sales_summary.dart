import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'reusable/summary_card.dart';

class SalesSummary extends StatelessWidget {
  const SalesSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SummaryCard(
          icon: Icons.show_chart,
          value: '143.3K',
          label: "Today's Sale",
        ),
        SummaryCard(
          icon: Icons.calendar_today,
          value: '\$250,423',
          label: 'Yearly Total Sales',
        ),
        SummaryCard(icon: Icons.attach_money, value: '\$68.9K', label: 'Net'),
        SummaryCard(
          icon: Icons.shopping_bag,
          value: '343',
          label: 'Products',
          backgroundColor: AppColors.purple,
        ),
      ],
    );
  }
}
