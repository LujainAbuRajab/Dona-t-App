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
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          ),
        ],
        title: Column(
          children: [
             Text('     current location', style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: AppColors.lightGray,
                    fontWeight: FontWeight.w100,
                                     
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.gray,
                  size: 24,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'Lujain world',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
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
