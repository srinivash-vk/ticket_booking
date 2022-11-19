import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/home_screen.dart';
import 'package:ticket_booking/screens/profile_screen.dart';
import 'package:ticket_booking/screens/search_screen.dart';
import 'package:ticket_booking/screens/tickets_screen.dart';

class Bottom_TabBar extends StatefulWidget {
  const Bottom_TabBar({Key? key}) : super(key: key);

  @override
  State<Bottom_TabBar> createState() => _Bottom_TabBarState();
}

class _Bottom_TabBarState extends State<Bottom_TabBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home_Screen(),
    const Search_Screen(),
    const Tickets_Screen(),
    const Profile_Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      
    _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: "Tickets"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
