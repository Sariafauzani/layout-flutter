import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/footer.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: item.photo,
              child: Image.asset(
                item.photo,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Harga: Rp${item.price}'),
            const SizedBox(height: 8),
            Text('Stok: ${item.stock}'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.orange),
                Text(item.rating.toString()),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Tambah ke Keranjang'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(
        name: 'Saria Fauzani',
        nim: '2341760178',
      ),
    );
  }
}
