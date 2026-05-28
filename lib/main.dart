import 'package:flutter/material.dart';
import 'components/nav_bar.dart';
import 'components/product_card.dart';
import 'components/circle_item.dart';
import 'constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // NavBar custom widget
          const NavBar(),
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Hero banner
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: const Color(0xFF1D6FA4),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Envíos rápidos.\nSeries favoritas.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Las cosas que amas están aquí.',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Task 2: First grid of 8 ProductCards
                  GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.85,
                    children: const [
                      ProductCard(title: 'Oferta Top', link: 'Explora ahora'),
                      ProductCard(title: 'Ofertas en Outlet', link: 'Explora ahora'),
                      ProductCard(title: 'Hogar y cocina', link: 'Saber más'),
                      ProductCard(title: 'Informática y accesorios', link: 'Descubre más'),
                      ProductCard(title: 'Regalos que le harán sonreír', link: 'Comprar ahora'),
                      ProductCard(title: 'Los libros más vendidos', link: 'Ver más'),
                      ProductCard(title: 'La tienda del Día de la Madre', link: 'Comprar ahora'),
                      ProductCard(title: 'Ofertas para ti', link: 'Explora ahora'),
                    ],
                  ),

                  // Task 3: First row of circle items
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            children: [
                              Text(
                                'Descubre productos italianos',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Descubre más',
                                style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CircleItem(title: 'Ideas de regalos'),
                            CircleItem(title: 'Juguetes'),
                            CircleItem(title: 'Alimentación'),
                            CircleItem(title: 'Ropa y accesorios'),
                            CircleItem(title: 'Hogar y muebles'),
                            CircleItem(title: 'Belleza y salud'),
                            CircleItem(title: 'Artesanía italiana'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Task 3: Second row of circle items
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            children: [
                              Text(
                                'La tienda del Día de la Madre',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Compra ahora',
                                style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CircleItem(title: 'Regalos por menos de 25€'),
                            CircleItem(title: 'Zapatos y ropa'),
                            CircleItem(title: 'Accesorios de moda'),
                            CircleItem(title: 'Belleza y bienestar'),
                            CircleItem(title: 'Flores'),
                            CircleItem(title: 'Personalizado y hecho a mano'),
                            CircleItem(title: 'Hogar y Jardín'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Task 4: Bottom area with 4 ProductCards
                  Container(
                    color: Colors.white,
                    child: GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.85,
                      children: const [
                        ProductCard(title: 'Hogar', link: 'Ver más'),
                        ProductCard(title: 'Los favoritos de los influencers', link: 'Explora más'),
                        ProductCard(title: 'Hallazgos de marcas top', link: 'Explora más'),
                        ProductCard(title: 'Electrónica', link: 'Ver más'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Task 4: Personalized recommendations section
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        const Text(
                          'Ver recomendaciones personalizadas',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color: AppColors.buyNowYellow,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Identificarse',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '¿Eres un cliente nuevo? Empieza aquí.',
                          style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Task 4: Back to top + footer
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: const Color(0xFF37475A),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: const Center(
                        child: Text(
                          'Volver arriba',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: AppColors.navBarBottom,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _FooterColumn(
                          title: 'Descubre más',
                          items: ['Ofertas del día', 'Novedades', 'Amazon Basics', 'Prime'],
                        ),
                        _FooterColumn(
                          title: 'Gana dinero con Amazon',
                          items: ['Vende en Amazon', 'Afiliados', 'Amazon Business'],
                        ),
                        _FooterColumn(
                          title: 'Métodos de pago',
                          items: ['Tarjeta de crédito', 'Recarga saldo', 'Amazon Cash'],
                        ),
                        _FooterColumn(
                          title: 'Ayuda',
                          items: ['Tu cuenta', 'Tus pedidos', 'Devoluciones', 'Contactar'],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.navBarTop,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Center(
                      child: Text(
                        'amazon',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const _FooterColumn({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              item,
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
