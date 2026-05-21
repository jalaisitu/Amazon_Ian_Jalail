import 'package:flutter/material.dart';
import '../components/nav_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: Row(
              children: [
                // miniaturas izquierda
                Container(
                  width: 60,
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(height: 60, color: Colors.grey, margin: EdgeInsets.all(5)),
                      Container(height: 60, color: Colors.grey, margin: EdgeInsets.all(5)),
                      Container(height: 60, color: Colors.grey, margin: EdgeInsets.all(5)),
                    ],
                  ),
                ),
                // imagen grande
                Container(
                  width: 400,
                  color: Colors.grey[300],
                ),
                // descripcion
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Laptop AOC 2025', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('4.2 ★★★★☆  231 reviews'),
                        SizedBox(height: 10),
                        Text('395€', style: TextStyle(fontSize: 22)),
                        SizedBox(height: 10),
                        Text('Free delivery'),
                      ],
                    ),
                  ),
                ),
                // caja compra
                Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Text('395€', style: TextStyle(fontSize: 20)),
                      SizedBox(height: 10),
                      Container(
                        color: Colors.yellow,
                        padding: EdgeInsets.all(8),
                        child: Text('Add to cart'),
                      ),
                      SizedBox(height: 5),
                      Container(
                        color: Colors.orange,
                        padding: EdgeInsets.all(8),
                        child: Text('Buy now'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}