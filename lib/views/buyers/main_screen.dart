import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_store/views/buyers/nav_screens/account/account_screen.dart';
import 'package:multi_store/views/buyers/nav_screens/cart/cart_screen.dart';
import 'package:multi_store/views/buyers/nav_screens/category/category_screen.dart';
import 'package:multi_store/views/buyers/nav_screens/home/home_screen.dart';
import 'package:multi_store/views/buyers/nav_screens/search/search_screen.dart';
import 'package:multi_store/views/buyers/nav_screens/store/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const StoreScreen(),
    const CartScreen(),
    const SearchScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (value) => setState(
          () => _selectedIndex = value,
        ),
        destinations: [
          const NavigationDestination(
            icon: Icon(CupertinoIcons.home),
            label: 'HOME',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/explore.svg'),
            label: 'CATEGORY',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/shop.svg'),
            label: 'STORE',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            label: 'CART',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            label: 'SEARCH',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/account.svg'),
            label: 'ACCOUNT',
          ),
        ],
      ),
      body: _screens.elementAt(_selectedIndex),
    );
  }
}
