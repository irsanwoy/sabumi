import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class KulinerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kuliner')),
      body: ListView(
        children: [
          CustomCard(
            title: 'Sate Padang',
            description: 'Sate khas Sumatera Barat.',
            imagePath: 'assets/sate_padang.jpg',
            onTap: () {
              print('Sate Padang');
            },
          ),
          CustomCard(
            title: 'Rendang',
            description: 'Rendang asli Minangkabau.',
            imagePath: 'assets/rendang.jpg',
            onTap: () {
              print('Rendang');
            },
          ),
        ],
      ),
    );
  }
}
