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
                  style: TextStyle(fontWeight: FontWeight.bold),
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
        Icon(Icons.star, color: Colors.red),
        Text("41"),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pantai Modangan adalah salah satu destinasi wisata '
        'di Kecamatan Donomulyo, Kabupaten Malang. Pantai ini '
        'memiliki panorama laut yang indah, pasir putih yang luas, '
        'serta terkenal dengan spot paralayang di bukitnya. '
        'Tempat ini cocok untuk menikmati matahari terbenam '
        'dan wisata alam yang menenangkan.\n\n'
        'Nama: Saria Fauzani\n'
        'NIM: 2341760178',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Saria Fauzani - 2341760178',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

}
