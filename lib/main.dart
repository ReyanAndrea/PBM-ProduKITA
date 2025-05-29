// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/admin_dashboard_page.dart';
import 'pages/user_dashboard.dart';
import 'pages/pembelian_page.dart';
import 'pages/revenue_page.dart';
import 'pages/pengguna_page.dart';
import 'pages/produk_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProduKITA',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/admin_dashboard': (context) => admin_DashboardPage(),
        '/user_dashboard': (context) => user_DashboardPage(),
        '/pengguna_page': (context) => PenggunaPage(),
        '/pembelian_page': (context) => PembelianPage(),
        '/revenue_page': (context) => RevenuePage(),
        '/produk_page': (context) => ProdukPage(),
      },
    );
  }
}
