import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/presentation/views/profile_view.dart';
import 'package:hungry_app/features/cart/views/cart_view.dart';
import 'package:hungry_app/features/home/views/home_view.dart';
import 'package:hungry_app/features/order_history/views/order_history_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController pageController;
  int currentView =
      0; // variable to keep track of the current view with a default value of 0 the refers to the first view which is HomeView

  late List<Widget>
      views; // late the value of views to be initialized inside the initState method

  @override
  void initState() {
    pageController = PageController(
        initialPage:
            currentView); // initialize the pageController with the currentView as the initial page which is HomeView
    views = [
      const HomeView(),
      const CartView(),
      const ProfileView(),
      const OrderHistoryView(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This page view will holds the four views that I will navigate to each obe of them"HomeView", "CartView", "ProfileView", "OrderHistoryView"
      body: PageView(
        controller: pageController,
        children: views,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: BottomNavigationBar(
            currentIndex:
                currentView, // set the current index to the currentView
            onTap: (index) {
              setState(() {
                currentView =
                    index; // set the currentView to the index that I tapped on
                pageController.jumpToPage(currentView);
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_restaurant_sharp),
                label: 'Orders',
              ),
            ]),
      ),
    );
  }
}
