import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'tambahprodukpage.dart';

class User_DashboardContent extends StatelessWidget {
  const User_DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background daun
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../assets/images/daun.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Konten utama
        SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                'ProduKITA',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Search dan filter
              Row(
                children: [
                  const Icon(Icons.menu),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Produk',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Judul kategori
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Produk',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Grid produk
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _buildProdukTile(context, null), // + button
                  _buildProdukTile(context, '../assets/images/KopiGayo.jpeg'),
                  _buildProdukTile(context, '../assets/images/tasrajut.jpeg'),
                  _buildProdukTile(context, '../assets/images/bumbuaceh.jpeg'),
                ],
              ),
              const SizedBox(height: 30),
              // Tombol tambah produk di tengah
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TambahProdukPage()),
                  ); // Aksi tambah produk
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.green,
                ),
                child: const Icon(Icons.add, size: 32, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProdukTile(BuildContext context, String? imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imagePath != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(imagePath, height: 80, fit: BoxFit.cover),
                )
              : const Icon(Icons.add, size: 40, color: Colors.grey),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (imagePath != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      imagePath: imagePath,
                      namaProduk: 'Kopi Gayo',
                      harga: 'Rp. 150.000/kg',
                      deskripsi:
                          'Kopi ini berasal dari dataran tinggi Aceh Tengah',
                      infoProduk: [
                        'Tanpa bahan pengawet',
                        'Dikemas menggunakan plastik tebal agar tahan udara',
                        'Dikeringkan dan fulling (Proses manual)',
                      ],
                      komentar: [
                        {
                          'nama': 'Reyan',
                          'komentar': 'Wah harum banget!',
                          'rating': 5
                        },
                        {
                          'nama': 'Andree',
                          'komentar': 'Enak banget ini !!',
                          'rating': 5
                        },
                      ],
                    ),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Detail'),
          ),
        ],
      ),
    );
  }
}
