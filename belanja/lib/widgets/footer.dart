import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String name;
  final String nim;

  const Footer({super.key, required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue.shade100,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 18),
            const SizedBox(width: 6),
            Text('$name - $nim'),
          ],
        ),
      ),
    );
  }
}
