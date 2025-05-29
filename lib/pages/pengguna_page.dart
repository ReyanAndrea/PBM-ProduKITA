import 'package:flutter/material.dart';

class PenggunaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Daftar Pengguna'), backgroundColor: Colors.green),
      body: ListView.builder(
        itemCount: 1, // Contoh data dummy
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.green.shade200,
            ),
            title: Text('Reyan Andrea'),
            subtitle: Text('reyanandrea@gmail.com'),
          );
        },
      ),
    );
  }
}
