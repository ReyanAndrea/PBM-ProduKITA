// lib/widgets/settings_content.dart
import 'package:flutter/material.dart';

class SettingsContent extends StatefulWidget {
  @override
  _SettingsContentState createState() => _SettingsContentState();
}

class _SettingsContentState extends State<SettingsContent> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Card(
            child: SwitchListTile(
              title: Text('Notifikasi'),
              subtitle: Text('Terima notifikasi dari aplikasi'),
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
          ),
          Card(
            child: SwitchListTile(
              title: Text('Mode Gelap'),
              subtitle: Text('Gunakan tema gelap'),
              value: _darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text('Bahasa'),
              subtitle: Text('Indonesia'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fitur ganti bahasa belum tersedia')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.security),
              title: Text('Keamanan'),
              subtitle: Text('Kelola keamanan akun'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fitur keamanan belum tersedia')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
