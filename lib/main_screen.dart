import 'package:coffee_app_2/screen/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int index = 0;

  final List<Widget> pages = [
    // Screen 1
    HomeScreen(),

    // Screen 2
    Center(
      child: Text(
        "Shop Screen",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),

    // Screen 3
    Center(
      child: Text(
        "Favourite Screen",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),

    // Screen 4
    Center(
      child: Text(
        "Notification Screen",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF1d2630),
        items: [
          BottomNavigationBarItem(
            label: "Home ",
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(
              Icons.shopify,
              color: index == 1 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Favourite",
            icon: Icon(
              Icons.favorite,
              color: index == 2 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notification_add,
              color: index == 3 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
