import 'package:flutter/material.dart';
import 'core/constants/app_theme.dart';
import 'data/database_helper.dart';
import 'screens/dashboard_screen.dart'; // Import your DashboardScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().database; // Initialize the database
  runApp(const SmartVyapar()); // ✅ Use the app wrapper with MaterialApp
}

class SmartVyapar extends StatelessWidget {
  const SmartVyapar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartVyapar',
      theme:
          AppTheme.lightTheme, // You can customize this in your app_theme.dart
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(), // ✅ Set your actual home screen
    );
  }
}
