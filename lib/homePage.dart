import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green.shade800,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_outlined,
                  color: Colors.lightBlue,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.blueGrey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.textsms_outlined,
                  color: Colors.blueGrey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.blueGrey,
                ),
                label: ''),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // search bar
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.shopping_cart_checkout),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.notification_important_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.1, vertical: 5),
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: double.maxFinite,
                  child: Center(
                      child: Text('hhh')
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
