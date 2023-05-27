import 'package:flutter/material.dart';
import 'package:story_app/models/product_model.dart';

import '../services/all_products_service.dart';
import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "New Trend",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            SizedBox(width: 20)
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 95),
            child: FutureBuilder<List<ProductModel>>(
                future: AllProductsServices().getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> data = snapshot.requireData;
                    return GridView.builder(
                        itemCount: data.length,
                        clipBehavior: Clip.none,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 100,
                        ),
                        itemBuilder: (context, index) {
                          return CustomCard(
                            product: data[index],
                          );
                        });
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ));
  }
}
