import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class KulinerScreen extends StatefulWidget {
  @override
  _KulinerScreenState createState() => _KulinerScreenState();
}

class _KulinerScreenState extends State<KulinerScreen> {
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
