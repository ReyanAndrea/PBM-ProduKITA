import 'package:flutter/material.dart';

class PembelianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Riwayat Pembelian'),
          backgroundColor: Colors.green),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: List.generate(1, (index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.green),
              title: Text('Belum Ada Produk Terjual'),
              subtitle: Text(''),
              trailing: Text(''),
            ),
          );
        }),
      ),
    );
  }
}
