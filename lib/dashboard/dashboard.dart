import 'package:bd_tour_guide/dashboard/home_screen.dart';
import 'package:bd_tour_guide/dashboard/places/places.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final controller = ImgController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const HomePage(),
      const Places(),
      const Scaffold(
        body: Center(child: Text('Dash', style: TextStyle(fontSize: 50))),
      ),
      const Scaffold(
        body: Center(child: Text('About', style: TextStyle(fontSize: 50))),
      ),
    ];

    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorShape: Border.all(color: Colors.transparent),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        child: Obx(
          () {
            return NavigationBar(
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) {
                // index = controller.selectedIndex.value;
                controller.changeIndex(index);
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  selectedIcon: Icon(
                    Icons.home,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(Icons.place_outlined),
                  label: 'Places',
                  selectedIcon: Icon(
                    Icons.place,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(Icons.dashboard_outlined),
                  label: 'Dash',
                  selectedIcon: Icon(
                    Icons.dashboard,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(Icons.info_outline),
                  label: 'About',
                  selectedIcon: Icon(
                    Icons.info,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: Obx(
        () => screens[controller.selectedIndex.value],
      ),
    );
  }
}
