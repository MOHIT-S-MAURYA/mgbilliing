import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class LeftSidebarWidget extends StatelessWidget {
  const LeftSidebarWidget({super.key});

  final List<Map<String, dynamic>> menuItems = const [
    {'icon': Icons.dashboard, 'title': 'Dashboard'},
    {'icon': Icons.shopping_cart, 'title': 'Orders'},
    {'icon': Icons.people, 'title': 'Customers'},
    {'icon': Icons.analytics, 'title': 'Analytics'},
    {'icon': Icons.settings, 'title': 'Settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Menu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 52, 52, 52),
            ),
          ),
          const SizedBox(height: 24),
          ...menuItems.map(
            (item) => ListTile(
              leading: Icon(item['icon'], color: AppColors.primary),
              title: Text(item['title']),
              onTap: () {
                // Add navigation logic here
              },
            ),
          ),
        ],
      ),
    );
  }
}
