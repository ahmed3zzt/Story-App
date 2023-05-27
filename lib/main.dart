import 'package:flutter/material.dart';
import 'package:story_app/screens/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:story_app/screens/update_product_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MainApp(), // Wrap your app
      ),
    );

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
