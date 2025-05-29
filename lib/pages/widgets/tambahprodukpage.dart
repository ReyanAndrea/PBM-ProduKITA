import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TambahProdukPage extends StatefulWidget {
  const TambahProdukPage({super.key});

  @override
  State<TambahProdukPage> createState() => _TambahProdukPageState();
}

class _TambahProdukPageState extends State<TambahProdukPage> {
  File? _imageFile;

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _imageFile = File(picked.path);
      });
    }
  }

  @override
  void dispose() {
    _namaController.dispose();
    _hargaController.dispose();
    _deskripsiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama Produk',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _hargaController,
              decoration: const InputDecoration(
                labelText: 'Harga',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _deskripsiController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Deskripsi Produk',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            _imageFile != null
                ? Image.file(_imageFile!, height: 150)
                : const Text("Unggah Gambar Produk"),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: _pickImage,
              icon: const Icon(Icons.image),
              label: const Text('Pilih Gambar'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simpan data produk (sementara hanya print)
                print('Nama: ${_namaController.text}');
                print('Harga: ${_hargaController.text}');
                print('Deskripsi: ${_deskripsiController.text}');
                print('Gambar: ${_imageFile?.path}');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Unggah'),
            )
          ],
        ),
      ),
    );
  }
}
