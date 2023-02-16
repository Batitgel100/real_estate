import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/account_screen.dart';
import 'package:real_estate/ui/screens/like_screen.dart';
import 'package:real_estate/ui/screens/my_advertisement.dart';
import 'package:real_estate/ui/screens/search_screen.dart';

int index_color = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [
    const SearchScreen(),
    const LikeScreen(),
    const MyAdvertisement(),
    const AccountScreen()
  ];
  void changePage(index) {
    setState(() {
      index_color = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index_color],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index_color,
        onTap: changePage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'хайх',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Таалагдсан',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Миний зар',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'хэрэглэгч',
          ),
        ],
      ),
    );
  }
}
