import 'package:flutter/material.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = "UpdateProductPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Update Product",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
