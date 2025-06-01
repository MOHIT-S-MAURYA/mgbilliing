// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/widgets/left_sidebar.dart';
import '../core/widgets/right_sidebar.dart';
import '../core/widgets/header.dart';
import '../core/widgets/sales_summary.dart';
import '../core/widgets/stock_report.dart';
import '../core/widgets/sales_orders_table.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: Row(
              children: [
                const LeftSidebarWidget(),
                Expanded(
                  flex: 4,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SalesSummary(),
                        SizedBox(height: 20),
                        StockReport(),
                        SizedBox(height: 20),
                        SalesOrdersTable(),
                      ],
                    ),
                  ),
                ),
                const RightSidebarWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
