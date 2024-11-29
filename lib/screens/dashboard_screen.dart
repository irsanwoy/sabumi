import 'package:flutter/material.dart';
import 'package:sabumi/widgets/bottom_nav_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0; // Indeks tab yang aktif

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section (Dengan gambar background)
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Selamat Datang di Sabumi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Grid Section (Bagian utama untuk kategori)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true, // Untuk menghindari grid meluas ke bawah
                physics: NeverScrollableScrollPhysics(), // Agar tidak scroll di dalam grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Dua kolom per baris
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: 4, // Jumlah kategori (ubah jika lebih banyak)
                itemBuilder: (context, index) {
                  return _buildDashboardCard(
                    context,
                    ['Kuliner', 'Wisata', 'Profile', 'Chat'][index], // Judul
                    [Icons.fastfood, Icons.place, Icons.account_circle, Icons.chat][index], // Icon
                    ['/kuliner', '/wisata', '/profile', '/chat'][index], // Halaman tujuan
                    ['assets/sate_padang.jpg', 'assets/pantai_kuta.jpg', 'assets/profile_placeholder.jpg', 'assets/chat_placeholder.jpg'][index], // Gambar
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,  // Menyimpan indeks tab yang aktif
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

  // Widget untuk membuat card di dashboard
  Widget _buildDashboardCard(BuildContext context, String title, IconData icon, String route, String imagePath) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route); // Navigasi ke halaman terkait
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),  // Gambar di card
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.white, size: 40),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
