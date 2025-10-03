import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // titleSection
  static Widget titleSection = Container(
    padding: const EdgeInsets.all(32), // soal 3
    child: Row(
      children: [
        Expanded(
          /* soal 1 */
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2 */
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'Wisata Pantai Modangan di Kabupaten Malang',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Donomulyo, Malang, Indonesia',
                style: TextStyle(
                  color: Colors.grey, // warna abu-abu
                ),
              ),
            ],
          ),
        ),
        /* soal 3 */
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text("41"),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saria Fauzani - 2341760178',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection, // ganti Hello World dengan ini
          ],
        ),
      ),
    );
  }
}
