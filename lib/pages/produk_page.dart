import 'package:flutter/material.dart';

class ProdukPage extends StatelessWidget {
  final List<Map<String, dynamic>> produkList = [
    {
      'nama': 'Kopi Gayo',
      'harga': 'Rp 150.000/kg',
      'gambar': '../assets/images/KopiGayo.jpeg',
    },
    {
      'nama': 'Tas Rajut',
      'harga': 'Rp 100.000',
      'gambar': '../assets/images/tasrajut.jpeg',
    },
    {
      'nama': 'Bumbu Aceh',
      'harga': 'Rp 50.000',
      'gambar': '../assets/images/bumbuaceh.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Produk Terlampir'), backgroundColor: Colors.green),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: produkList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final produk = produkList[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12)],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(produk['gambar'], height: 80),
                SizedBox(height: 8),
                Text(produk['nama'],
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(produk['harga'], style: TextStyle(color: Colors.grey)),
              ],
            ),
          );
        },
      ),
    );
  }
}
