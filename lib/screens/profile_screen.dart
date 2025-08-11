import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4; // Account tab is selected

  // Menu items data
  final List<Map<String, dynamic>> _menuItems = [
    {'icon': Icons.shopping_bag_outlined, 'title': 'Orders', 'onTap': () {}},
    {'icon': Icons.person_outline, 'title': 'My Details', 'onTap': () {}},
    {
      'icon': Icons.location_on_outlined,
      'title': 'Delivery Address',
      'onTap': () {},
    },
    {
      'icon': Icons.payment_outlined,
      'title': 'Payment Methods',
      'onTap': () {},
    },
    {'icon': Icons.local_offer_outlined, 'title': 'Promo Code', 'onTap': () {}},
    {
      'icon': Icons.notifications_outlined,
      'title': 'Notifications',
      'onTap': () {},
    },
    {'icon': Icons.help_outline, 'title': 'Help', 'onTap': () {}},
    {'icon': Icons.info_outline, 'title': 'About', 'onTap': () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Profile Header
          SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue.shade100,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Afsar Hossen',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 14),
                          Icon(
                            Icons.edit_outlined,
                            color: Color(0xFF53B175),
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Imshuvo97@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Divider(height: 1, color: Colors.grey.shade200),

          // Menu Items
          Column(
            children: _menuItems.map((item) {
              return Column(
                children: [
                  _buildMenuItem(
                    icon: item['icon'],
                    title: item['title'],
                    onTap: item['onTap'],
                  ),
                  Divider(height: 1, color: Colors.grey.shade200),
                ],
              );
            }).toList(),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade100,
                foregroundColor: Colors.green.shade600,
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.logout, size: 20),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF181725),
        unselectedItemColor: Color(0xFF181725),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            activeIcon: Icon(Icons.store),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Colors.grey.shade700),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: Color(0xFF181725), size: 24),
          ],
        ),
      ),
    );
  }
}
