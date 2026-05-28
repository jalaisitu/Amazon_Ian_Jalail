import 'package:flutter/material.dart';
import '../pages/product_page.dart';
import '../constants.dart';

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
        // Top bar
        Container(
          color: AppColors.navBarTop,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              // Logo Amazon
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 1),
                ),
                child: const Text(
                  'amazon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const Text(
                '.es',
                style: TextStyle(color: AppColors.amazonOrange, fontSize: 12),
              ),
              const SizedBox(width: 10),
              // Delivery location
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Entrega en',
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  Text(
                    'Barcelona 08025',
                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              // Search bar
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.searchBar,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      // Department selector
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFFDDD),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text('Todos los depts.', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_drop_down, size: 16),
                          ],
                        ),
                      ),
                      // Text field
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          decoration: const InputDecoration(
                            hintText: 'Buscar en Amazon.es',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            isDense: true,
                          ),
                        ),
                      ),
                      // Search button
                      GestureDetector(
                        onTap: () {
                          if (searchController.text.trim().toLowerCase() == 'laptop') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductPage(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: AppColors.amazonOrange,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          child: const Icon(Icons.search, color: Colors.black, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Language
              const Row(
                children: [
                  Text('ES', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 16),
                ],
              ),
              const SizedBox(width: 10),
              // Account
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hola, identifícate', style: TextStyle(color: Colors.grey, fontSize: 11)),
                  Text(
                    'Cuenta y listas ▾',
                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              // Orders
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Devoluciones', style: TextStyle(color: Colors.grey, fontSize: 11)),
                  Text(
                    'y Pedidos',
                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              // Cart
              Row(
                children: [
                  const Icon(Icons.shopping_cart, color: Colors.white, size: 28),
                  const SizedBox(width: 2),
                  Column(
                    children: [
                      const Text('0', style: TextStyle(color: AppColors.amazonOrange, fontWeight: FontWeight.bold)),
                      const Text('Cesta', style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // Bottom nav bar
        Container(
          color: AppColors.navBarBottom,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Row(
            children: [
              const Text('≡  Todo', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
              const SizedBox(width: 15),
              _navItem('Supermercado'),
              _navItem('Los más vendidos'),
              _navItem('Amazon Basics'),
              _navItem('Ofertas'),
              _navItem('Música'),
              _navItem('Últimas Novedades'),
              _navItem('Prime'),
              _navItem('Tarjetas regalo'),
              _navItem('Informática'),
              const Spacer(),
              const Text(
                'Regalos para mamá',
                style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _navItem(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 13)),
    );
  }
}
