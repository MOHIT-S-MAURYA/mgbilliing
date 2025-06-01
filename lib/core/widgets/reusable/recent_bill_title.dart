import 'package:flutter/material.dart';

class RecentBillTile extends StatelessWidget {
  final String customerName;
  final double amount;
  final String date;
  final IconData leadingIcon;
  final Color iconColor;
  final TextStyle? nameStyle;
  final TextStyle? amountStyle;
  final TextStyle? dateStyle;

  const RecentBillTile({
    super.key,
    required this.customerName,
    required this.amount,
    required this.date,
    this.leadingIcon = Icons.receipt_long,
    this.iconColor = Colors.blue,
    this.nameStyle,
    this.amountStyle,
    this.dateStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, color: iconColor),
      title: Text(
        customerName,
        style: nameStyle ?? const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        '₹$amount',
        style: amountStyle ?? const TextStyle(color: Colors.black54),
      ),
      trailing: Text(
        date,
        style: dateStyle ?? const TextStyle(color: Colors.grey),
      ),
    );
  }
}
