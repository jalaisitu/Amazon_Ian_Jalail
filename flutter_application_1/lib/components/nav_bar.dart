import 'package:flutter/material.dart';
import '../pages/product_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xFF131921),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Text(
                'amazon',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: 'Buscar en Amazon.es',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (searchController.text == 'laptop') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              ),
                            );
                          }
                        },
                        child: Icon(Icons.search, color: Color(0xFFFF9900)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text('Cuenta y listas', style: TextStyle(color: Colors.white)),
              SizedBox(width: 10),
              Text('Pedidos', style: TextStyle(color: Colors.white)),
              SizedBox(width: 10),
              Icon(Icons.shopping_cart, color: Colors.white),
            ],
          ),
        ),
        Container(
          color: Color(0xFF232F3E),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Text('≡ Todo', style: TextStyle(color: Colors.white)),
              SizedBox(width: 15),
              Text('Supermercado', style: TextStyle(color: Colors.white)),
              SizedBox(width: 15),
              Text('Ofertas', style: TextStyle(color: Colors.white)),
              SizedBox(width: 15),
              Text('Prime', style: TextStyle(color: Colors.white)),
              SizedBox(width: 15),
              Text('Informática', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}