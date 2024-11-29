import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class WisataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wisata')),
      body: ListView(
        children: [
          CustomCard(
            title: 'Pantai Kuta',
            description: 'Pantai indah di Bali.',
            imagePath: 'assets/pantai_kuta.jpg',
            onTap: () {
              print('Pantai Kuta');
            },
          ),
          CustomCard(
            title: 'Danau Toba',
            description: 'Danau vulkanik terbesar di dunia.',
            imagePath: 'assets/danau_toba.jpg',
            onTap: () {
              print('Danau Toba');
            },
          ),
        ],
      ),
    );
  }
}
