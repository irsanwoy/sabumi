import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class WisataScreen extends StatefulWidget {
  @override
  _WisataScreenState createState() => _WisataScreenState();
}

class _WisataScreenState extends State<WisataScreen> {
  int _currentIndex = 0;  // Menyimpan indeks tab yang aktif

  // Daftar halaman yang akan ditampilkan pada BottomNavigationBar
  final List<Widget> _pages = [
    Center(child: Text('Chat Page')),
    Center(child: Text('Cart Page')),
    Center(child: Text('Profile Page')),
  ];

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Menyimpan indeks tab yang aktif
        onTap: (int index) {
          setState(() {
            _currentIndex = index;  // Memperbarui tab yang aktif
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',  // Tab pertama
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',  // Tab kedua
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',  // Tab ketiga
          ),
        ],
      ),
    );
  }
}
