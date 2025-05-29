import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat Datang di ProduKITA!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 38, 165, 0),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                _buildDashboardCard(
                  context,
                  title: 'Banyak Pengguna',
                  value: '1',
                  icon: Icons.people,
                  color: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(context, '/pengguna_page');
                  },
                ),
                _buildDashboardCard(
                  context,
                  title: 'Total Pembelian',
                  value: '0',
                  icon: Icons.shopping_cart,
                  color: Colors.green,
                  onTap: () {
                    Navigator.pushNamed(context, '/pembelian_page');
                  },
                ),
                _buildDashboardCard(
                  context,
                  title: 'Revenue',
                  value: 'Rp 0',
                  icon: Icons.attach_money,
                  color: Colors.orange,
                  onTap: () {
                    Navigator.pushNamed(context, '/revenue_page');
                  },
                ),
                _buildDashboardCard(
                  context,
                  title: 'Total Produk',
                  value: '3',
                  icon: Icons.inventory,
                  color: Colors.red,
                  onTap: () {
                    Navigator.pushNamed(context, '/produk_page');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.1), color.withOpacity(0.2)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              SizedBox(height: 10),
              Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
