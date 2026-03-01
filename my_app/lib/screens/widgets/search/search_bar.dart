import 'package:flutter/material.dart';
import 'package:my_app/utils/constants/colors.dart';

class TSearchBar extends StatelessWidget {
  const TSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(14),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          prefixIcon: Icon(Icons.search),
          hintText: "Cari produk...",
          hintStyle: TextStyle(color: TColors.darkerGrey),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
