import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../constants.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          // Breadcrumb
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: const Text(
              'Informática > Portátiles > Portátiles tradicionales',
              style: TextStyle(fontSize: 12, color: AppColors.linkBlue),
            ),
          ),
          // Main content
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Column 1: Thumbnails
                  Container(
                    width: 70,
                    color: Colors.white,
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        _thumbnail(),
                        _thumbnail(),
                        _thumbnail(),
                        _thumbnail(),
                        _thumbnail(),
                        _thumbnail(),
                        Container(
                          height: 60,
                          margin: const EdgeInsets.all(4),
                          color: Colors.grey[200],
                          child: const Center(
                            child: Text('6 VÍDEOS', style: TextStyle(fontSize: 9)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column 2: Main image
                  Container(
                    width: 380,
                    color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.network(
                          'https://picsum.photos/seed/laptop/400/350',
                          width: 360,
                          height: 350,
                          fit: BoxFit.contain,
                          errorBuilder: (c, e, s) => Container(
                            width: 360,
                            height: 350,
                            color: Colors.grey[200],
                            child: const Icon(Icons.laptop, size: 80, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _smallImage(),
                            _smallImage(),
                            _smallImage(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Column 3: Product description
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ordenador Portátil con I-ntel N97 (hasta 3,6 GHz), Portátil Computadora 16GB DDR4 512GB SSD Expansión 2TB (Mejor que Celeron) Laptop,WiFi,BT5,Tipo C,USB3.2, HDMI, 15,6" Notebook 1080P Versión 2025',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Visita la tienda de AOC',
                            style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              const Text(
                                '4.2 ',
                                style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                              ),
                              const Text(
                                '★★★★☆',
                                style: TextStyle(color: AppColors.amazonOrange, fontSize: 14),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '231 valoraciones',
                                style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '100+ comprados el mes pasado',
                            style: TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          const Divider(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '-14% ',
                                style: TextStyle(color: Colors.red, fontSize: 16),
                              ),
                              const Text(
                                '395',
                                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '99€',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Precio recomendado: 460,99€',
                            style: TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          const Text(
                            'Devoluciones GRATIS ▾',
                            style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Los precios de los productos vendidos en Amazon incluyen el IVA.',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 10),
                          // Size selector
                          const Text('Tamaño: 15,6 Pulgadas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              _sizeBox('15,6\nPulgadas', '395,99€', true),
                              const SizedBox(width: 8),
                              _sizeBox('16 Pulgadas', 'Ver opciones\ndisponibles', false),
                              const SizedBox(width: 8),
                              _sizeBox('16,10\nPulgadas', 'Ver opciones\ndisponibles', false),
                            ],
                          ),
                          const SizedBox(height: 10),
                          // Color selector
                          const Text('Color: Gris Oscuro', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              _colorBox(Colors.grey, selected: true),
                              const SizedBox(width: 8),
                              _colorBox(Colors.blueGrey),
                              const SizedBox(width: 8),
                              _colorBox(Colors.black45),
                            ],
                          ),
                          const SizedBox(height: 15),
                          // Specs table
                          _specRow('Marca', 'AOC'),
                          _specRow('Nombre del modelo', '2025 AOC portátil'),
                          _specRow('Tamaño de pantalla', '15,6 Pulgadas'),
                          _specRow('Color', 'Gris Oscuro'),
                          _specRow('Tamaño del disco duro', '512 GB'),
                        ],
                      ),
                    ),
                  ),
                  // Column 4: Buy box
                  Container(
                    width: 220,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Prime badge
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          color: const Color(0xFF00A8CC),
                          child: const Text(
                            '🚀 Envío rápido y gratis',
                            style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Te ofrecemos una prueba GRATIS de 30 días de Prime.',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'prime',
                          style: TextStyle(
                            color: Color(0xFF00A8CC),
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('395', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                            Text('99€', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Devoluciones GRATIS ▾',
                          style: TextStyle(color: AppColors.linkBlue, fontSize: 12),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Entrega GRATIS el viernes, 2 de mayo. Haz el pedido en 3 horas.',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '📍 Entrega en Barcelona 08025 - Actualizar ubicación',
                          style: TextStyle(color: AppColors.linkBlue, fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'En stock',
                          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(height: 6),
                        // Quantity
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Cantidad: 1', style: TextStyle(fontSize: 13)),
                              Icon(Icons.arrow_drop_down, size: 18),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Add to cart button
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: AppColors.buyNowYellow,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Añadir a la cesta',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Buy now button
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: AppColors.addToCartOrange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Comprar ya',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buyBoxRow('Envío desde', 'Amazon'),
                        _buyBoxRow('Vendido por', 'BOB0317'),
                        _buyBoxRow('Devoluciones', 'Se puede devolver en 30 días'),
                        _buyBoxRow('Pago', 'Transacción segura'),
                        const SizedBox(height: 10),
                        const Text(
                          'Añadir a la Lista de deseos',
                          style: TextStyle(color: AppColors.linkBlue, fontSize: 13),
                        ),
                        const Divider(height: 16),
                        const Text(
                          'Otros vendedores en Amazon',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Nuevos (5) desde 395⁹⁹€  Envío ↓',
                          style: TextStyle(color: AppColors.linkBlue, fontSize: 12),
                        ),
                      ],
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

  Widget _thumbnail() {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Image.network(
        'https://picsum.photos/seed/laptop_thumb/60/60',
        fit: BoxFit.cover,
        errorBuilder: (c, e, s) => Container(color: Colors.grey[200]),
      ),
    );
  }

  Widget _smallImage() {
    return Container(
      width: 80,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
      child: Image.network(
        'https://picsum.photos/seed/laptop_sm/80/60',
        fit: BoxFit.cover,
        errorBuilder: (c, e, s) => Container(color: Colors.grey[200]),
      ),
    );
  }

  Widget _sizeBox(String size, String price, bool selected) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: selected ? AppColors.amazonOrange : Colors.grey,
          width: selected ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(4),
        color: selected ? const Color(0xFFFFF8EE) : Colors.white,
      ),
      child: Column(
        children: [
          Text(size, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
          Text(price, style: const TextStyle(fontSize: 10, color: Colors.black54)),
        ],
      ),
    );
  }

  Widget _colorBox(Color color, {bool selected = false}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: selected ? AppColors.amazonOrange : Colors.grey,
          width: selected ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _specRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }

  Widget _buyBoxRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontSize: 11, color: Colors.black54)),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 11, color: AppColors.linkBlue),
            ),
          ),
        ],
      ),
    );
  }
}
