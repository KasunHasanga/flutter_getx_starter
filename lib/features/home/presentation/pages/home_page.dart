import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widget/app_bar.dart';

import '../../../../common_widget/vehicle_picker.dart';
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
                onTap: () {

                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.document_scanner,
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
                GestureDetector(
                  onTap: () async {
                    var vehicle = await VehiclePicker(
                            vehicleList: homePageController.vehicleList,
                            selectedVehicle:
                                homePageController.selectedVehicle.value,
                            context: context)
                        .showPicker();

                    homePageController.selectedVehicle.value = vehicle;
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: Get.width / 1.5,
                    padding: const EdgeInsets.fromLTRB(15, 13, 10, 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(14)),
                        border: Border.all(
                            color: AppColors.kBorderColor, width: 1)),
                    child: Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            homePageController.selectedVehicle.value.nickname ??
                                '-',
                            style: AppFonts.styleWithGilroyMediumText(
                                color: AppColors.kTextDarkGray,
                                fSize: FontSizeValue.fontSize14,
                                fontWeight: FontWeight.w400),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.kTextDarkGray,
                          )
                        ],
                      );
                    }),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                Text(
                  'New parking'.tr,
                  style: AppFonts.styleWithGilroyBoldText(
                      color: Theme.of(context).colorScheme.onBackground,
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
