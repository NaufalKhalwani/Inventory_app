import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/screens/beranda/beranda.dart';
import 'package:my_app/screens/daftar%20inventaris/inventaris.dart';
import 'package:my_app/screens/widgets/drawer/sidebar_item.dart';

class SideBar extends StatefulWidget {
  final int selectedIndex;

  const SideBar({super.key, required this.selectedIndex});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // ===== HEADER =====
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xff1E3A8A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.inventory_2, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "StockMaster",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1E3A8A),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // ===== MENU =====
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  // BERANDA
                  SidebarItem(
                    icon: Icons.home,
                    title: "Beranda",
                    isActive: selectedIndex == 0,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedIndex = 0;
                      });
                      Get.off(
                        () => const Beranda(),
                        transition: Transition.fadeIn,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),

                  // INVENTARIS
                  SidebarItem(
                    icon: Icons.inventory_2,
                    title: "Daftar Inventaris",
                    isActive: selectedIndex == 1,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedIndex = 1;
                      });
                      Get.off(
                        () => const Inventaris(),
                        transition: Transition.fadeIn,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),

                  // LAPORAN
                  SidebarItem(
                    icon: Icons.receipt_long,
                    title: "Laporan & Analitik",
                    isActive: selectedIndex == 2,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                  ),

                  // PROFILE
                  SidebarItem(
                    icon: Icons.person,
                    title: "Profile",
                    isActive: selectedIndex == 3,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                  ),
                ],
              ),
            ),

            // ===== PROFILE CARD =====
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Admin Gudang",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Administrator",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ===== LOGOUT =====
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.red),
                  SizedBox(width: 10),
                  Text(
                    "Keluar",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
