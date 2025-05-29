import 'package:flutter/material.dart';

class RevenuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Pendapatan'), backgroundColor: Colors.green),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(30),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Total Revenue',
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
                SizedBox(height: 10),
                Text(
                  'Rp 0',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
