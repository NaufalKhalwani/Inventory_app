import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData LightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
  );
  static BottomSheetThemeData DarkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
  );
}
