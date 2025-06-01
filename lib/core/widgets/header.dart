import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 2,
      title: const Text(
        'Dashboard',
        style: TextStyle(
          color: Color.fromARGB(255, 63, 62, 62),
          fontWeight: FontWeight.normal,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.notifications, color: AppColors.black),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/user_avatar.png',
            ), // Add your own asset
          ),
        ),
      ],
    );
  }
}
