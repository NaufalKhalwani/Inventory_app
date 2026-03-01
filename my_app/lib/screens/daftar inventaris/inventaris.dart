import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_app/maindahsboard.dart';
import 'package:my_app/screens/daftar%20inventaris/widgets/filter.dart';
import 'package:my_app/screens/daftar%20inventaris/widgets/product.dart';
import 'package:my_app/screens/widgets/button/filter_button.dart';
import 'package:my_app/screens/widgets/drawer/side_bar.dart';
import 'package:my_app/screens/widgets/product/product_horizontal.dart';
import 'package:my_app/screens/widgets/search/search_bar.dart';
import 'package:my_app/utils/constants/colors.dart';

class Inventaris extends StatelessWidget {
  const Inventaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Daftar Inventaris",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.notifications_none, color: Colors.black87),
                Positioned(
                  right: -2,
                  top: -2,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                      color: TColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "0",
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.copyWith(color: TColors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1E3A8A),
        onPressed: () {},
        child: const Icon(Icons.add, size: 30, color: TColors.white),
      ),

      // SideBar Drwer
      drawer: SideBar(selectedIndex: 1),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar
            TSearchBar(),
            const SizedBox(height: 16),

            // Filter Buttons
            Filters(),
            const SizedBox(height: 20),

            // List
            Product(),
          ],
        ),
      ),
    );
  }
}
