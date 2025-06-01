import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onTap;
  final double iconSize;
  final double padding;
  final TextStyle? labelStyle;
  final Color backgroundColor;

  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
    this.iconSize = 24,
    this.padding = 18,
    this.labelStyle,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.all(padding),
            backgroundColor: backgroundColor,
          ),
          child: Icon(icon, size: iconSize),
        ),
        const SizedBox(height: 8),
        Text(label, style: labelStyle ?? const TextStyle(fontSize: 12)),
      ],
    );
  }
}
