import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String? imagePath;
  final String namaProduk;
  final String harga;
  final String deskripsi;
  final List<String> infoProduk;
  final List<Map<String, dynamic>> komentar;

  const DetailPage({
    super.key,
    this.imagePath,
    required this.namaProduk,
    required this.harga,
    required this.deskripsi,
    required this.infoProduk,
    required this.komentar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background daun
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/daun.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'ProduKita',
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                if (imagePath != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(imagePath!, height: 160),
                  ),
                const SizedBox(height: 20),
                Text(
                  'Nama Produk: $namaProduk\nHarga Pasar: $harga\n\nDeskripsi:\n$deskripsi',
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Informasi Tambahan:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ...infoProduk.map((e) => Text("• $e")),
                const SizedBox(height: 20),
                const Text(
                  'Komentar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: komentar.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item['nama'],
                              style: const TextStyle(color: Colors.white)),
                          const SizedBox(height: 5),
                          Text(item['komentar'],
                              style: const TextStyle(color: Colors.white)),
                          const SizedBox(height: 5),
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                index < item['rating']
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.yellow,
                                size: 16,
                              );
                            }),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
