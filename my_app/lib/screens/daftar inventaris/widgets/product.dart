import 'package:flutter/material.dart';
import 'package:my_app/screens/widgets/product/product_horizontal.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ProductCardHorizontal(
            name: "Tomat Organik",
            category: "Hasil Bumi",
            unit: "kg",
            stock: 124,
            price: 4.50,
            status: "Tersedia",
            statusColor: Colors.green,
            image: "assets/images/tomato.jpg",
          ),
          ProductCardHorizontal(
            name: "Pisang Premium",
            category: "Hasil Bumi",
            unit: "lbs",
            stock: 12,
            price: 1.20,
            status: "Stok Rendah",
            statusColor: Colors.orange,
            image: "assets/images/tomato.jpg",
          ),
          ProductCardHorizontal(
            name: "Blueberry Liar",
            category: "Buah Beri",
            unit: "Box",
            stock: 0,
            price: 6.00,
            status: "Stok Habis",
            statusColor: Colors.red,
            image: "assets/images/tomato.jpg",
          ),
          ProductCardHorizontal(
            name: "Selada Hijau",
            category: "Hasil Bumi",
            unit: "Bonggol",
            stock: 45,
            price: 2.50,
            status: "Tersedia",
            statusColor: Colors.green,
            image: "assets/images/tomato.jpg",
          ),
          ProductCardHorizontal(
            name: "Wortel Segar",
            category: "Akar",
            unit: "Ikat",
            stock: 89,
            price: 1.75,
            status: "Tersedia",
            statusColor: Colors.green,
            image: "assets/images/tomato.jpg",
          ),
        ],
      ),
    );
  }
}