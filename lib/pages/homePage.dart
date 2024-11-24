import 'package:flutter/material.dart';
import 'special_section.dart';
import 'hb.dart';
import 'popularPrds.dart';
import 'shortcuts.dart';
import 'promoBanner.dart';
import 'searchBar.dart';


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

        // body
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchBar(),
                PromoBanner(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ShortcutsBar(icon: const Icon(Icons.flash_on) , onPressed: (){} , label: 'Flash \n Deal',),
                    ShortcutsBar(icon: const Icon(Icons.shopping_bag_outlined) , onPressed: (){} , label: 'Bag',),
                    ShortcutsBar(icon: const Icon(Icons.watch) , onPressed: (){} , label: 'Watches',),
                    ShortcutsBar(icon: const Icon(Icons.card_giftcard) , onPressed: (){} , label: 'Daily \n Gift',),
                    ShortcutsBar(icon: const Icon(Icons.more_horiz) , onPressed: (){} , label: 'More',),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                hb(heading: 'Special For You', btn: 'See More'),
                SizedBox(
                  height: 130,
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Popularprds(
                          catImage: 'assets/images/watch1.jpg',
                          catName: 'Watches',
                          subCatCounts: '18 Brands'
                      ),
                      Popularprds(
                          catImage: 'assets/images/P9B.jpg',
                          catName: 'P9 Max',
                          subCatCounts: '44 Brands'
                      ),
                      Popularprds(
                          catImage: 'assets/images/watch1.jpg',
                          catName: 'catName',
                          subCatCounts: 'subCatCounts'
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                hb(heading: 'Populer Products', btn: 'See More'),
                SizedBox(
                  height: 160,
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SpecialSection(pImage: 'assets/images/watch1.jpg', pName: 'Watch', price: '\$322'),
                      SpecialSection(pImage: 'assets/images/P9B.jpg', pName: 'HeadPhone', price: '\$542'),
                      SpecialSection(pImage: 'assets/images/watch1.jpg', pName: 'Watch', price: '\$322'),
                      SpecialSection(pImage: 'assets/images/P9B.jpg', pName: 'HeadPhone', price: '\$542'),
                      SpecialSection(pImage: 'assets/images/watch1.jpg', pName: 'Watch', price: '\$322'),
                      SpecialSection(pImage: 'assets/images/P9B.jpg', pName: 'HeadPhone', price: '\$542'),
                      SpecialSection(pImage: 'assets/images/watch1.jpg', pName: 'Watch', price: '\$322'),
                      SpecialSection(pImage: 'assets/images/P9B.jpg', pName: 'HeadPhone', price: '\$542'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
