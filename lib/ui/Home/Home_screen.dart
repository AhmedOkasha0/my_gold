import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_gold_app/ui/Home/home_view.dart';
import 'package:my_gold_app/ui/Search/search_view.dart';
import 'package:my_gold_app/ui/Shop/shop_view.dart';
import 'package:my_gold_app/ui/history/history_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (index) {
          selectIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: SvgPicture.asset('assets/icons/ic_shop.svg'),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: SvgPicture.asset(
              'assets/icons/ic_search.svg',
            ),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: SvgPicture.asset('assets/icons/ic_history.svg'),
          ),
        ],
      ),
      body: Tabs[selectIndex],
    );
  }

  List<Widget> Tabs = [
    HomeView(),
    ShopView(),
    SearchView(),
    HistoryView(),
  ];
}
