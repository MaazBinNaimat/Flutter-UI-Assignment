import 'package:flutter/material.dart';

class hb extends StatelessWidget {
  const hb({super.key,
    required this.heading,
    required this.btn,
  });

  final String heading;
  final String btn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Text(
            heading,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              letterSpacing: 0.5,
            ),
          ),
          Spacer(),
          Text(
            btn,
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
