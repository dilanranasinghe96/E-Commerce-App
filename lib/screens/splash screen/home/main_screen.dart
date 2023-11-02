import 'package:e_commerce_app/screens/splash%20screen/cart/cart.dart';
import 'package:e_commerce_app/screens/splash%20screen/favourite/favourite_page.dart';
import 'package:e_commerce_app/screens/splash%20screen/home/home_page.dart';
import 'package:e_commerce_app/screens/splash%20screen/profile%20page/profile_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const HomePage(),
      const FavouritePage(),
      Cart(),
      const profilePage()
    ];

    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.black,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_rounded), label: "Favourites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile")
              ]),
          body: screens[myCurrentIndex]),
    );
  }
}













// Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             BottomIcon(
//                 icon: Icons.home,
//                 isActive: true,
//                 ontap: () {
//                   index = 0;
//                 }),
//             BottomIcon(
//                 icon: Icons.favorite,
//                 isActive: false,
//                 ontap: () {
//                   index = 1;
//                 }),
//             BottomIcon(
//                 icon: Icons.shopping_cart,
//                 isActive: false,
//                 ontap: () {
//                   index = 2;
//                 }),
//             BottomIcon(
//                 icon: Icons.person,
//                 isActive: false,
//                 ontap: () {
//                   index = 3;
//                 })
//           ],
//         ),
