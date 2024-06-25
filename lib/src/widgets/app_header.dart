import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
  });

  static const appName = "Istighfar";
  static const imageUrl = "assets/profile-icon.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.all(20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu, size: 30),
          const Text(
          appName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.07,
            letterSpacing: -0.40,
          ),),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
