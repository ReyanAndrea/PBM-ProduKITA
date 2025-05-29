// lib/widgets/help_content.dart
import 'package:flutter/material.dart';

class HelpContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
              subtitle: Text('Pertanyaan yang sering diajukan'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fitur FAQ belum tersedia')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Hubungi Kami'),
              subtitle: Text('Dapatkan bantuan langsung'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fitur hubungi kami belum tersedia')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('Tentang Aplikasi'),
              subtitle: Text('Versi 1.0.0'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Tentang Aplikasi'),
                    content: Text(
                      'Aplikasi Edukasi dan Marketplace\n'
                      'Versi: 1.0.0\n'
                      'Dibuat oleh Reyan Andrea',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.bug_report),
              title: Text('Laporkan Bug'),
              subtitle: Text('Bantu kami memperbaiki aplikasi'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fitur laporan bug belum tersedia')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
