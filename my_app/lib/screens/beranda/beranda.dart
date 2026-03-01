import 'package:flutter/material.dart';
import 'package:my_app/screens/widgets/drawer/side_bar.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/size.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(selectedIndex: 0),
      appBar: AppBar(
        title: const Text("Beranda"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                // nanti bisa ke halaman profile
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/tomato.jpg"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                height: MediaQuery.of(context).size.height * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: TColors.primary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Stok Barang",
                          style: Theme.of(context).textTheme.headlineSmall!
                              .copyWith(color: TColors.grey),
                        ),
                        Icon(Icons.inventory_2_outlined, color: TColors.grey),
                      ],
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      "1.250",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.copyWith(color: TColors.white),
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Row(
                      children: [
                        Icon(Icons.trending_up, color: Colors.green),

                        Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: TSizes.md,
                              color: Colors.green,
                            ),
                            Text(
                              "5%",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Colors.green),
                            ),
                          ],
                        ),
                        SizedBox(width: TSizes.sm),
                        Text(
                          "dari bulan lalu",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
