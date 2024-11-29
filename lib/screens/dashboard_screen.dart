import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart'; // Mengimpor widget bottom navigation bar

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;  // Menyimpan indeks tab yang aktif

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = [
    Center(child: Text('Chat Page')), // Halaman untuk tab pertama
    Center(child: Text('Cart Page')), // Halaman untuk tab kedua
    Center(child: Text('Profile Page')), // Halaman untuk tab ketiga
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang di Sabumi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.fastfood, color: Colors.orange),
                title: Text('Kuliner'),
                onTap: () {
                  Navigator.pushNamed(context, '/kuliner');
                },
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.place, color: Colors.orange),
                title: Text('Wisata'),
                onTap: () {
                  Navigator.pushNamed(context, '/wisata');
                },
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.account_circle, color: Colors.orange),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ),
            // Tambahkan tab navigator di bawah
          ],
        ),
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
