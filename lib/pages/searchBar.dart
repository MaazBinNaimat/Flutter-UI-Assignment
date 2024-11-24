import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText:  'Search...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child:  Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(onPressed: () {} , icon: const Icon(Icons.notification_important)),
            ),
          ),
        )
      ],
    );
  }
}
