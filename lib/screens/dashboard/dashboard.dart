import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Meeting/meeting_screen.dart';
import '../favorite/favorite_screen.dart';
import '../home/home_screen.dart';
import '../massege/massege_screen.dart';
import '../profile/profile_screen.dart';
import 'dashboard_controller.dart';

class Dashboard extends StatelessWidget {
  DashboardController dashboardController = Get.put(DashboardController());

  Dashboard({Key? key}) : super(key: key);

  final screens = [
    HomeScreen(),
    MeetingScreen(),
    MassegeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: dashboardController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black12,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index) {
              dashboardController.changeIndex(index);
            },
            currentIndex: dashboardController.selectedIndex.value,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                  // backgroundColor: Color(0xFFF1CF63)
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.meeting_room_rounded),
                  label: "Meeting",
                  //backgroundColor: Color(0xFFF1CF63)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail_rounded),
                label: "Massage",
                //backgroundColor: Color(0xFFF1CF63)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
                // backgroundColor: Color(0xFFF1CF63)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: "Profile",
                // backgroundColor: Color(0xFFF1CF63)
              )
            ],
          )),
    );
  }
}
