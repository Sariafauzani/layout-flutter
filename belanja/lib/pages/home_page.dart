import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo: 'images/Sugar.jpg',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo: 'images/Salt.jpg',
      stock: 15,
      rating: 4.0,
    ),
    Item(
      name: 'Flour',
      price: 7000,
      photo: 'images/Flour.jpg',
      stock: 25,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // tampil 2 kolom
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7, // proporsi kartu
          ),
          itemBuilder: (context, index) {
            return ItemCard(item: items[index]);
          },
        ),
      ),
      bottomNavigationBar: const Footer(
        name: 'Saria Fauzani',
        nim: '2341760178',
      ),
    );
  }
}
