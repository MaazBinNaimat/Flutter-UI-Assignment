import 'package:flutter/material.dart';


class ProductDetailPage extends StatelessWidget {
const ProductDetailPage({super.key});

@override
Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  return Scaffold(
    backgroundColor: Colors.blue.shade50,
      body: Stack(
        children: [
          // Background Image
             ClipRRect(
               borderRadius: BorderRadius.only(bottomRight: Radius.circular(75)),
               child: Container(
                width: screenWidth,
                height: 440,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/P9B.jpg'), // Replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
                         ),
             ),
          // Content
          Padding(
            padding: const EdgeInsets.only(top: 440),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
                color: Colors.blue.shade50,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Heading Container
                  Container(
                    width: screenWidth,
                    padding: const EdgeInsets.only(top: 26, left: 36),
                    // color: Colors.white,
                    child: Text(
                      'Product Title',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    padding: const EdgeInsets.all(16),
                    // color: Colors.white,
                    child: Text(
                      'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Button Container
                  Container(
                    width: screenWidth,
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: Text('Buy Now'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}