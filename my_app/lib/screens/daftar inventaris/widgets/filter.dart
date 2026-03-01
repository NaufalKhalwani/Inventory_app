import 'package:flutter/material.dart';
import 'package:my_app/screens/widgets/button/filter_button.dart';

class Filters extends StatelessWidget {
  const Filters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        FilterButton(
          title: "Kategori",
          icon: Icons.keyboard_arrow_down,
        ),
        FilterButton(title: "Status", icon: Icons.filter_list),
        FilterButton(title: "Urutkan", icon: Icons.swap_vert),
      ],
    );
  }
}