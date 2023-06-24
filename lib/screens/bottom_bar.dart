import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/search_screen.dart';
import 'package:untitled/screens/ticket_screen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex=0;
 static final List<Widget>_widgetOptions=<Widget>[
   const HomeScreen(),
   const SearchScreen(),
   const TicketScreen(),
   const Text("Profile"),
 ];
  @override
  void _onItemTapped(int index){
  setState(() {
    _selectedIndex=index;
  });

  }

  Widget build(BuildContext context) {
    return Scaffold(

    body: Center(
      child: _widgetOptions[_selectedIndex],
    ),

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.blueGrey,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color(0xFF526480),
      items: const [
        BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"),
        BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_search_regular),label: "Search"),
        BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_ticket_regular),label: "Tickets"),
        BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_person_regular),label: "Home"),


      ],

    ),
    );


  }
}
