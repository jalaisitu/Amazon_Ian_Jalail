import 'package:flutter/material.dart';
import 'components/nav_bar.dart';
import 'components/product_card.dart';
import 'components/circle_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            NavBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ProductCard(title: 'Top Offers', link: 'Explore now'),
                        ProductCard(title: 'Outlet Offers', link: 'Explore now'),
                        ProductCard(title: 'Home & Kitchen', link: 'Learn more'),
                        ProductCard(title: 'Computing & Accessories', link: 'Discover more'),
                        ProductCard(title: 'Gifts that will make them smile', link: 'Buy now'),
                        ProductCard(title: 'Best selling books', link: 'See more'),
                        ProductCard(title: 'Mother\'s Day Store', link: 'Buy now'),
                        ProductCard(title: 'Offers for you', link: 'Explore now'),
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleItem(title: 'Gift ideas'),
                          CircleItem(title: 'Toys'),
                          CircleItem(title: 'Food'),
                          CircleItem(title: 'Clothes'),
                          CircleItem(title: 'Home'),
                          CircleItem(title: 'Beauty'),
                          CircleItem(title: 'Italian'),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleItem(title: 'Gifts under 25€'),
                          CircleItem(title: 'Shoes'),
                          CircleItem(title: 'Accessories'),
                          CircleItem(title: 'Wellness'),
                          CircleItem(title: 'Flowers'),
                          CircleItem(title: 'Handmade'),
                          CircleItem(title: 'Garden'),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: GridView.count(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ProductCard(title: 'Home', link: 'See more'),
                          ProductCard(title: 'Influencer favorites', link: 'Explore more'),
                          ProductCard(title: 'Top brand finds', link: 'Explore more'),
                          ProductCard(title: 'Electronics', link: 'See more'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}