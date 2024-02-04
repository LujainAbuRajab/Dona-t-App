import 'package:flutter/material.dart';
import 'package:food_delivary_app/utils/app_colors.dart';
import 'package:food_delivary_app/views/pages/favorites_page.dart';
import 'package:food_delivary_app/views/pages/home_page.dart';
import 'package:food_delivary_app/views/pages/profile_page.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Drawer(),
      appBar: AppBar(
        actions: [
          const Padding(
            padding:  EdgeInsets.only(top:40),
            child:  Icon(
                    Icons.location_on,
                    color: AppColors.gray,
                    size: 16,
                  ),
          ),
                const SizedBox(
                  width: 3,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,40,16,0),
                  child: Text(
                    'Lujain world',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.gray,
                    ),
                  ),
                ),
        ],
        title: Column(
          mainAxisAlignment:  MainAxisAlignment.start,
          children: [
            Text("Dona't"),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white10,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: AppColors.lightPink,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: AppColors.white,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: AppColors.primary,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.favorite,
              color: AppColors.white,
            ),
            icon: Icon(
              Icons.favorite_border,
              color: AppColors.primary,
            ),
            label: 'Favorites',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
              color: AppColors.white,
            ),
            icon: Icon(
              Icons.person_outline,
              color: AppColors.primary,
            ),
            label: 'profile',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const HomePage(),
        const FavoritePage(),
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
