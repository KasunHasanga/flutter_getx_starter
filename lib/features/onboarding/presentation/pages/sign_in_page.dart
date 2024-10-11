import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common_widget/app_button.dart';
import '../../../../common_widget/app_text_field.dart';

import '../../../../config/app_images.dart';
import '../../../../config/colors.dart';
import '../../../../config/constants.dart';
import '../../../../config/fonts.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';
import '../controller/onboarding_controller.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/sign_in';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKeySignIn = GlobalKey<FormState>();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  late OnBoardingController onBoardingController;

  @override
  void initState() {

    if (Get.isRegistered<OnBoardingController>()) {
      onBoardingController = Get.find();
    } else {
      onBoardingController = Get.put(OnBoardingController());
    }

    super.initState();
  }

  AutovalidateMode autoValidateMode= AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //     preferredSize: Size.fromHeight(60), child: FamiliAppBar()),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              SizedBox(
                width: Get.width*0.4,
                height: Get.width*0.4,
                child: Image.asset( AllImages().splashLogo),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'App Name'.tr,
                textAlign: TextAlign.center,
                style: AppFonts.styleWithGilroyMediumText(
                    color: Theme.of(context).colorScheme.onSurface, fSize: FontSizeValue.fontSize18),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formKeySignIn,
                autovalidateMode:autoValidateMode  ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: AppTextField(
                        labelText: 'Email Address'.tr,
                        textController: emailAddress,
                        keyBoardType: TextInputType.emailAddress,
                        onValidate: (value) {
                          if (value!.isEmpty) {
                            return 'email_required'.tr;
                          } else if (!value.isEmail) {
                            return 'email_invalid'.tr;
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: AppTextField(
                        isObscureText: true,
                        labelText: 'password'.tr,
                        textController: password,
                        keyBoardType: TextInputType.emailAddress,
                        onValidate: (value) {
                          if (value!.isEmpty) {
                            return 'password_required'.tr;
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                        width: Get.width,
                        child: AppButton(
                          action: () {
                           // if(autoValidateMode!= AutovalidateMode.always) {
                           //    setState(() {
                           //      autoValidateMode = AutovalidateMode.always;
                           //    });
                           //  }
                           //  if (formKeySignIn.currentState!.validate()) {
                           //    //Get.toNamed(DashboardPage.routeName);
                           //    onBoardingController.login(
                           //        emailAddress.text, password.text);
                           //  }
                            Get.offAllNamed(DashboardPage.routeName,);
                          },
                          title: "Login".tr,
                          backgroundColor: AppColors.kGreen,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Expanded(
                            child: Divider(
                          color: AppColors.kLoginDivider,
                          height: 1,
                          thickness: 1,
                        )),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "or login with".tr,
                            style: AppFonts.styleWithGilroyMediumText(
                                color: Theme.of(context).colorScheme.onSurface,
                                fSize: FontSizeValue.fontSize18),
                          ),
                        ),
                        const Expanded(
                            child: Divider(
                          color: AppColors.kLoginDivider,
                          height: 1,
                          thickness: 1,
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                                color: AppColors.kLighterGreen,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    color: AppColors.kGreenBorder, width: 1)),
                            child: Image.asset(AllImages().imgFacebook),
                          ),
                        )),
                        Expanded(
                            child: TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                                color: AppColors.kLighterGreen,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    color: AppColors.kGreenBorder, width: 1)),
                            child: Image.asset(AllImages().imgGoogle),
                          ),
                        )),
                        Expanded(
                            child: TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                                color: AppColors.kLighterGreen,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    color: AppColors.kGreenBorder, width: 1)),
                            child: Image.asset(AllImages().imgApple),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
