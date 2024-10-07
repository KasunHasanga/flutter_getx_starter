import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widget/app_bar.dart';

import '../../../../config/colors.dart';
import '../../../../config/constants.dart';
import '../../../../config/fonts.dart';
import '../controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/dashboard/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageController homePageController;

  @override
  void initState() {
    if (Get.isRegistered<HomePageController>()) {
      homePageController = Get.find();
    } else {
      homePageController = Get.put(HomePageController());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: MainAppBar(
            title: 'home'.tr,
            otherAction: [
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: AppColors.kGreen,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Home Page'.tr,
                  style: AppFonts.styleWithGilroyBoldText(
                      color: Theme.of(context).colorScheme.onSurface,
                      fSize: FontSizeValue.fontSize25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
