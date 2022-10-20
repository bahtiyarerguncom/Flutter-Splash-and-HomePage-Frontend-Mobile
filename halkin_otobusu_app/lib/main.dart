import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eticaretapp/main_page.dart';
import 'package:eticaretapp/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  runApp(const HalkinOtobusuApp());
}

class HalkinOtobusuApp extends StatefulWidget {
  const HalkinOtobusuApp({super.key});

  @override
  State<HalkinOtobusuApp> createState() => _HalkinOtobusuAppState();
}

class _HalkinOtobusuAppState extends State<HalkinOtobusuApp> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
