import 'package:flutter/material.dart';

import 'package:toturial/components/bottom_nav_bar.dart';
import 'package:toturial/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CardPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTapChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[500],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("lib/images/logo.png", color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text("Home", style: TextStyle(color: Colors.white)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text("About", style: TextStyle(color: Colors.white)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text("Logout", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
