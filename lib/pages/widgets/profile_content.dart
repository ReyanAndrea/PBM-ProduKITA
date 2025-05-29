// lib/widgets/profile_content.dart
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.green[100],
            child: Icon(
              Icons.person,
              size: 80,
              color: const Color.fromARGB(255, 6, 190, 0),
            ),
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama'),
              subtitle: Text('Reyan Andrea'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('reyanandrea@gmail.com'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telepon'),
              subtitle: Text('+62 822-1368-7747'),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Fitur edit profil belum tersedia')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 14, 168, 0),
              foregroundColor: Colors.white,
            ),
            child: Text('Edit Profil'),
          ),
        ],
      ),
    );
  }
}
