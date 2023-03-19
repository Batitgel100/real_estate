import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/main%20screens/account_screen.dart';
import 'package:real_estate/ui/screens/add_ad.dart';
import 'package:real_estate/ui/screens/main%20screens/like_screen.dart';
import 'package:real_estate/ui/screens/main%20screens/my_advertisement.dart';
import 'package:real_estate/ui/screens/main%20screens/search_screen.dart';

// Дэлгэцийн индекс
int indexcolor = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [
    const SearchScreen(),
    const LikeScreen(),
    const SearchScreen(),
    const MyAdvertisement(),
    const AccountScreen()
  ];

  void changePage(int index) {
    setState(() {
      indexcolor = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexcolor],
      bottomNavigationBar: Builder(builder: (context) {
        return MyBottomNavBar(
          currentIndex: 0,
          onTap: changePage,
        );
      }),
    );
  }
}

class MyBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MyBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: AppColors.green,
      items: [
        const BottomNavigationBarItem(
          activeIcon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.search,
              size: 40,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          label: 'хайх',
        ),
        const BottomNavigationBarItem(
          activeIcon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.favorite,
              size: 40,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
          label: 'Таалагдсан',
        ),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AddAd()));
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                  ),
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
          activeIcon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.list,
              size: 40,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.list,
              size: 30,
            ),
          ),
          label: 'Миний зар',
        ),
        const BottomNavigationBarItem(
          activeIcon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.account_box_outlined,
              size: 40,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.account_box_outlined,
              size: 30,
            ),
          ),
          label: 'хэрэглэгч',
        ),
      ],
    );
  }
}
