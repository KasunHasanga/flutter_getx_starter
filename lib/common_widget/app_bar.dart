import 'package:flutter/material.dart';
import '../config/constants.dart';
import '../config/fonts.dart';
import '../config/theme/theme_service.dart';
import 'package:get/get.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    this.excludeHeader = false,
    this.showBack = false,
    this.otherAction=const [],

    required this.title,
  });
  final bool excludeHeader;

  final bool showBack;
  final String title;
  final List<Widget> otherAction;


  @override
  Widget build(BuildContext context) {
    if (showBack){
    return AppBar(
      elevation: 0,
      excludeHeaderSemantics: true,
      title: Text(title,  style: AppFonts.styleWithGilroyMediumText(
          color:Theme.of(context).colorScheme.onBackground,fSize: FontSizeValue.fontSize16),),
      leading:IconButton(
        onPressed: () {
          Get.back();
        },
        // icon: Image.asset(backIcon, color: Theme.of(context).colorScheme.onBackground,),
        icon: Icon(Icons.arrow_back,color: Theme.of(context).colorScheme.onBackground,)
      ),

      backgroundColor: ThemeService().currentThemeIsDark()
          ? (excludeHeader ? Colors.transparent : Theme.of(context).colorScheme.background)
          : (excludeHeader ? Colors.transparent : Theme.of(context).colorScheme.background),
    );}
    else{
      return AppBar(
        elevation: 0,
        excludeHeaderSemantics: true,
        title: Text(title,  style: AppFonts.styleWithGilroyMediumText(
            color:Theme.of(context).colorScheme.onBackground,fSize: FontSizeValue.fontSize16),),

        actions:[
          ...otherAction,

        ],
        backgroundColor: ThemeService().currentThemeIsDark()
            ? (excludeHeader ? Colors.transparent : Theme.of(context).colorScheme.background)
            : (excludeHeader ? Colors.transparent : Theme.of(context).colorScheme.background),
      );
    }

  }
}
