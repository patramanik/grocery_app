import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Logout.dart';
import 'package:grocery_app/home.dart';
import 'package:grocery_app/offer.dart';
import 'package:grocery_app/orderhistory.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Color bgColor = const Color(0xFF08db5c);
  int currentIndex = 0;
  final iconList = <IconData>[
    CupertinoIcons.home,
    CupertinoIcons.gift,
    Icons.shopping_cart_outlined,
    Icons.person
  ];
  final labelList = <String>[
    "Home",
    "Offer",
    "Order History",
    "Profile",
  ];
  var pageList = [const Home_page(), const Offer(), const OrderHistory(), const LogoutAlert()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bgColor,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFFFFFFF),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: List.generate(
          pageList.length,
          (index) => BottomNavigationBarItem(
            label: labelList[index],
            icon: Container(
              width: 60,
              height: 55,
              decoration: currentIndex == index
                  ? BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow.shade300, bgColor],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [.1, .1]))
                  : const BoxDecoration(),
              //color: currentIndex == index ? Colors.yellow : bgColor,
              child: Icon(
                iconList[index], size: 30,

                // color:
                //     currentIndex == index ? Colors.amber[700] : Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
