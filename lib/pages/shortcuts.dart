import 'package:flutter/material.dart';

class ShortcutsBar extends StatelessWidget {
  const ShortcutsBar({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.label,
  });

  final icon;
  final onPressed;
  final label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow.shade100,
              ),
              child: IconButton(
                onPressed: onPressed,
                icon: icon,color: Colors.amber,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(label ,
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}
