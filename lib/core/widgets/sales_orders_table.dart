import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class SalesOrdersTable extends StatefulWidget {
  const SalesOrdersTable({super.key});

  @override
  State<SalesOrdersTable> createState() => _SalesOrdersTableState();
}

class _SalesOrdersTableState extends State<SalesOrdersTable> {
  String selectedRange = 'Last 7 Days';

  final List<String> timeRanges = [
    'Today',
    'Yesterday',
    'Last 7 Days',
    'Last 30 Days',
    'This Year',
  ];

  List<String> weekdays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu'];

  List<Map<String, dynamic>> salesData = [
    {
      'type': 'Direct Sales',
      'sales': [2, 32, 42, 23, 7],
    },
    {
      'type': 'Wholesale',
      'sales': [0, 41, 33, 11, 14],
    },
    {
      'type': 'Retail',
      'sales': [2, 12, 25, 16, 21],
    },
  ];

  Widget _buildTableHeader() {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: Text(
            'Sales Type',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
        ...weekdays.map(
          (day) => Expanded(
            child: Text(
              day,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Total',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildTableRow(String type, List<int> sales) {
    final total = sales.reduce((a, b) => a + b);
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(type, style: const TextStyle(color: AppColors.black)),
        ),
        ...sales.map(
          (value) => Expanded(
            child: Text(
              value.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.gray),
            ),
          ),
        ),
        Expanded(
          child: Text(
            total.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header with title and dropdown
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sales Orders',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                DropdownButton<String>(
                  value: selectedRange,
                  items:
                      timeRanges
                          .map(
                            (range) => DropdownMenuItem(
                              value: range,
                              child: Text(range),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        selectedRange = value;
                        // You can update salesData here based on the selected range
                      });
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Table Header
            _buildTableHeader(),
            const Divider(),
            // Table Rows
            ...salesData.map(
              (row) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: _buildTableRow(
                  row['type'],
                  List<int>.from(row['sales']),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
