 import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.black87, size: 24),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularItem(String title, String imageUrl) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: const Color.fromARGB(255, 86, 84, 84),
              width: 2,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مذكراتي'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              backgroundImage: const NetworkImage(
                'https://via.placeholder.com/150',
              ),
              child: const Icon(
                Icons.person,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildMenuItem(Icons.favorite, 'المفضلة', () {}),
                  const SizedBox(width: 12),
                  _buildMenuItem(Icons.history, 'المقروءة', () {}),
                  const SizedBox(width: 12),
                  _buildMenuItem(Icons.settings, 'الإعدادات', () {}),
                  const SizedBox(width: 12),
                  _buildMenuItem(Icons.notifications, 'الإشعارات', () {}),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'آخر الأفكار',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCircularItem('عنوان 1', 'https://via.placeholder.com/150'),
                  const SizedBox(width: 16),
                  _buildCircularItem('عنوان 2', 'https://via.placeholder.com/150'),
                  const SizedBox(width: 16),
                  _buildCircularItem('عنوان 3', 'https://via.placeholder.com/150'),
                  const SizedBox(width: 16),
                  _buildCircularItem('عنوان 4', 'https://via.placeholder.com/150'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    
    );
  }
}
