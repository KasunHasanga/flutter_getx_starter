import 'package:flutter_getx_starter/common_widget/app_bar.dart';
import 'package:flutter_getx_starter/common_widget/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/colors.dart';
import '../../../../config/constants.dart';
import '../../../../config/fonts.dart';
import '../../../../config/theme/theme_service.dart';
import '../../../onboarding/presentation/pages/sign_in_page.dart';
import '../controller/profile_controller.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/dashboard/past_booking';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileController profileController;
  bool isLightModeSelected = false;
  bool isAuto = false;

  @override
  void initState() {
    if (Get.isRegistered<ProfileController>()) {
      profileController = Get.find();
    } else {
      profileController = Get.put(ProfileController());
    }
    isAuto = ThemeService().getAutoThemeStatus();
    if (isAuto) {
      isLightModeSelected = !ThemeService().currentThemeIsDark();
    } else {
      isLightModeSelected = !ThemeService().getThemeStatus();
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
            title: 'profile'.tr,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  // Get.toNamed(AddParkingPage.routeName);
                },
                title: Text(
                  'dark_mode'.tr,
                  style: AppFonts.styleWithGilroyMediumText(
                      color: Theme.of(context).colorScheme.onBackground,
                      fSize: FontSizeValue.fontSize16),
                ),
                trailing: CupertinoSwitch(
                  value: !isLightModeSelected,
                  onChanged: (value) => setState(() {
                    isLightModeSelected = !value;
                    ThemeService().switchTheme(value);
                    isAuto = false;
                    setState(() {});
                  }),
                ),
              ),
              ListTile(
                onTap: () {
                  // Get.toNamed(AddParkingPage.routeName);
                },
                title: Text(
                  'tell_your_friends'.tr,
                  style: AppFonts.styleWithGilroyMediumText(
                      color: Theme.of(context).colorScheme.onBackground,
                      fSize: FontSizeValue.fontSize16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              ListTile(
                onTap: () {
                  // Get.toNamed(AddParkingPage.routeName);
                },
                title: Text(
                  'frequently_asked_questions'.tr,
                  style: AppFonts.styleWithGilroyMediumText(
                      color: Theme.of(context).colorScheme.onBackground,
                      fSize: FontSizeValue.fontSize16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                backgroundColor: AppColors.kGreen,
                title: "log_out".tr,
                action: () {
                  Get.offAndToNamed(SignInPage.routeName);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppButton(
                    backgroundColor: AppColors.kGreen,
                    title: "Sinhala".tr,
                    action: () {
                      profileController.changeLanguage(const Locale("si"));
                    },
                  ),
                  AppButton(
                    backgroundColor: AppColors.kGreen,
                    title: "English".tr,
                    action: () {
                      profileController.changeLanguage(const Locale("en"));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
