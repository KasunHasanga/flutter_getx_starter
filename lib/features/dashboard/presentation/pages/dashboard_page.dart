import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/colors.dart';
import '../../../../config/constants.dart';
import '../../../../config/fonts.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../controller/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = '/dashboard';
   int selectedIndex;
   DashboardPage({super.key, this.selectedIndex = 0});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late DashboardController dashboardController;
  @override
  void initState() {
    if (Get.isRegistered<DashboardController>()) {
      dashboardController = Get.find();
    } else {
      dashboardController = Get.put(DashboardController());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          footerItem('home'.tr, Icons.home_outlined, 0),
          footerItem('isolation'.tr, Icons.content_paste_outlined, 1),
          footerItem('Add Page'.tr, Icons.add_card_outlined, 2),
          footerItem('profile'.tr, Icons.account_circle_outlined, 3),
        ],
        currentIndex: widget.selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.background,
        fixedColor: Theme.of(context).colorScheme.background,
        showUnselectedLabels: false,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: widget.selectedIndex,
          children: [const HomePage(), Container(), Container(), const ProfilePage()],
        ),
      ),
    );
  }

  footerItem(String tr, IconData icon, int i) {
    return BottomNavigationBarItem(
      backgroundColor: Theme.of(context).colorScheme.background,
      icon: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Icon(
                  icon,
                  color: widget.selectedIndex == i
                      ? AppColors.kPrimary
                      : Theme.of(context).colorScheme.onSurface,
                ),
              ),
              SizedBox(
                height: 16,
                child: Text(
                  tr,
                  style: AppFonts.styleWithGilroyRegularText(
                    color: widget.selectedIndex == i
                        ? AppColors.kPrimary
                        : Theme.of(context).colorScheme.onSurface,
                    fSize: FontSizeValue.fontSize13,
                  ),
                ),
              )
            ]),
      ),
      label: '',
    );
  }

  void _onItemTapped(int index) {
    if (index == 0) {
    } else if (index == 1) {
    } else if (index == 2) {
      //shoperController.getMyCoCart();
    }
    widget.selectedIndex = index;
    setState(() {});
  }
}
