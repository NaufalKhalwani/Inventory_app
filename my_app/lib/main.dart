import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/screens/daftar%20inventaris/inventaris.dart';
import 'package:my_app/utils/theme/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.LightTheme,
      darkTheme: TAppTheme.DarkTheme,
      home: Inventaris(),
    );
  }
}
