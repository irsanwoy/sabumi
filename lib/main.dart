import 'package:flutter/material.dart';
import 'package:sabumi/screens/splash_screen.dart';
import 'package:sabumi/screens/login_screen.dart';
import 'package:sabumi/screens/register_screen.dart';
import 'package:sabumi/screens/dashboard_screen.dart';
import 'package:sabumi/screens/kuliner_screen.dart';
import 'package:sabumi/screens/wisata_screen.dart';
import 'package:sabumi/screens/profile_screen.dart';


void main() {
  runApp(SabumiApp());
}

class SabumiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sabumi App',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/kuliner': (context) => KulinerScreen(),
        '/wisata': (context) => WisataScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
