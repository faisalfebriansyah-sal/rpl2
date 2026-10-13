import 'package:flutter/material.dart';

class GridProductPage extends StatelessWidget {
  const GridProductPage({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Kaos Flutter',
      'price': 'Rp.120.000',
      'image': 'assets/images/product1.jpg',
    },
    {
      'name': 'Kaos React',
      'price': 'Rp.150.000',
      'image': 'assets/images/product2.jpg',
    },
    {
      'name': 'Kaos Vue',
      'price': 'Rp.130.000',
      'image': 'assets/images/product3.jpg',
    },
    {
      'name': 'Kaos Angular',
      'price': 'Rp.140.000',
      'image': 'assets/images/product4.jpg',
    },
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[100],
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      product['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black
                  ),
                ),

                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     Text(
                        product['price']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          );
        },
      ),
    );
  }
}