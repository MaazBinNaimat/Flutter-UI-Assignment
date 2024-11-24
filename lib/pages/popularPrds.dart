import 'package:flutter/material.dart';

class Popularprds extends StatelessWidget {
  const Popularprds({
    super.key,
    required this.catImage,
    required this.catName,
    required this.subCatCounts,
  });

  final String catImage;
  final String catName;
  final String subCatCounts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                width: 220,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 5))
                ]),
                child: Image.asset(
                  catImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 5),
              child: Text(
                catName,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 5),
              child: Text(
                subCatCounts,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
