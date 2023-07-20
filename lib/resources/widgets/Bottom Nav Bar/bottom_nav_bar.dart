import 'package:flutter/material.dart';
import 'package:shoes_app/resources/colors/colors.dart';
import 'package:shoes_app/view/main_screen.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {


  List screens =[
    const MainScreen(),
    Container(color: Colors.black),
    Container(),
    Container(),
  ];
  void _navigationBtmBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 0;

  final List _pages=[
    const MainScreen(),
    Container(color: Colors.blueAccent,),
    Container(color: Colors.orangeAccent,),
    Container(color: Colors.purpleAccent,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: Padding(
          padding:  const EdgeInsets.only(bottom: 30),
          child: BottomNavigationBar(
           // elevation: 0,
            backgroundColor: AppColors.btmNavBarColor,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(label: 'Home',icon: Image(image: AssetImage('assets/DashBoard.png',),height: 24, width: 24,)),
              BottomNavigationBarItem(label: 'DashBoard',icon: Image(image: AssetImage('assets/Category.png',),height: 24, width: 24,)),
              BottomNavigationBarItem(label: 'Cart',icon: Image(image: AssetImage('assets/Cart.png',),height: 24, width: 24,)),
              BottomNavigationBarItem(label: 'Profile',icon: Image(image: AssetImage('assets/Profile2.png',),height: 24, width: 24,)),
            ],
            onTap: _navigationBtmBar,
            currentIndex: _selectedIndex,
          ),
        ),
      ),
    );
  }
}
