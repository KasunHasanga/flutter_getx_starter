import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_images.dart';
import '../config/colors.dart';
import '../config/constants.dart';
import '../config/fonts.dart';

import '../features/home/presentation/controller/home_page_controller.dart';

class VehiclePicker {
  VehiclePicker(
      {required this.vehicleList,
      required this.selectedVehicle,
      required this.context});

  final List<VehicleModel> vehicleList;
  final VehicleModel selectedVehicle;
  final BuildContext context;

  Future<VehicleModel> showPicker() async {
    VehicleModel accountSelected = selectedVehicle;
    await showModalBottomSheet<VehicleModel>(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 360,
            width: Get.width,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            decoration: BoxDecoration(
                // color: AppColors.kWhite,
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 4,
                    decoration: const BoxDecoration(color: AppColors.kShadow),
                    margin: const EdgeInsets.only(bottom: 20, top: 6),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: Text(
                      "Change Vehicle".tr,
                      textAlign: TextAlign.center,
                      style: AppFonts.styleWithGilroyMediumText(
                          color: Theme.of(context).colorScheme.onBackground,
                          fSize: FontSizeValue.fontSize16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: vehicleList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          accountSelected = vehicleList[index];
                          Get.back();
                        },
                        child: Container(
                          width: Get.width,
                          padding: const EdgeInsets.fromLTRB(16, 14, 20, 15),
                          margin: const EdgeInsets.only(
                              top: 16, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14)),
                              border: Border.all(
                                  color: AppColors.kBorderColor, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    vehicleList[index].nickname ?? '-',
                                    style: AppFonts.styleWithGilroyMediumText(
                                      color: Theme.of(context).colorScheme.onBackground,
                                      fSize: FontSizeValue.fontSize15,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "${vehicleList[index].type} | ${vehicleList[index].vehicleNumber}  ",
                                    style: AppFonts.styleWithGilroyMediumText(
                                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                                      fSize: FontSizeValue.fontSize14,
                                    ),
                                  ),
                                ],
                              ),
                              selectedVehicle == vehicleList[index]
                                  ? SizedBox(
                                      width: 22,
                                      height: 22,
                                      child: Image.asset(
                                        AllImages().imgCheckboxSelectedRound,
                                        width: 22,
                                        height: 22,
                                      ),
                                    )
                                  : Container(
                                      width: 22,
                                      height: 22,
                                      padding: const EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1.0,
                                              color: AppColors.kBorderColor),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(55.0) //
                                              )), //
                                    ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        });

    return accountSelected;
  }
}
