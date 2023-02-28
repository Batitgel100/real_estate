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
        items: [
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.search,
                size: 40,
              ),
            ),
            label: 'хайх',
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.heart_broken,
                size: 40,
              ),
            ),
            label: 'Таалагдсан',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: InkWell(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.green,
                      size: 40,
                    ),
                  ),
                ),
              ),
              label: 'Зар нэмэх'),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.list,
                size: 40,
              ),
            ),
            label: 'Миний зар',
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.account_box_outlined,
                size: 40,
              ),
            ),
            label: 'хэрэглэгч',
          ),
        ],
      ),
    );
  }
}
