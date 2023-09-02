import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GNav(
      //  type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff6318AF),
      color: Colors.black,
      activeColor: Colors.black,
      tabBackgroundColor: Color.fromARGB(255, 188, 157, 220),
      gap: 8,
      padding: EdgeInsets.all(22),
      tabs: [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.search,
          text: "Search",
        ),
        GButton(
          icon: Icons.person,
          text: "profile",
        ),
        GButton(
          icon: Icons.settings,
          text: "setting",
        ),
      ],
      onTabChange: (int index) {
        setState(() {
          selectedIndex = index;
        });
        if (index == 0) {
          print("home");
        }
        if (index == 1) {
          print("search");
        }
        if (index == 2) {
          print("ID2");
        }
        if (index == 3) {
          print("ID3");
        }
      },
    );
    // return BottomNavigationBar(
    //   type: BottomNavigationBarType.fixed,
    //   backgroundColor: Colors.black,
    //   items: [
    //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.flip_camera_ios), label: "New"),
    //   ],
    //   selectedItemColor: Color.fromARGB(255, 71, 166, 206),
    //   unselectedItemColor: Colors.white,
    //   currentIndex: selectedIndex,
    //   onTap: (int index) {
    //     setState(() {
    //       selectedIndex = index;
    //     });
    //     if (index == 0) {
    //       print("home");
    //     }
    //     if (index == 1) {
    //       print("search");
    //     }
    //     if (index == 2) {
    //       print("ID2");
    //     }
    //     if (index == 3) {
    //       print("ID3");
    //     }
    //   },
    // );
  }
}
