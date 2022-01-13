import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/launcher_icon.jpg',
                  fit: BoxFit.contain,
                  width: screenWidth(context) * .4,
                  height: screenWidth(context) * .4,
                ),
                // SvgPicture.asset(
                //   'assets/images/ic_logo_.svg',
                //   width: screenWidth(context) * .4,
                // ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Welcome to cannachange!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: AppColors.secondAccent),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'The Sustainable Way to Enjoy Cannabis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondAccent),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Are you a dispensary or consumer?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.darkGrey),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainButton(
                      label: 'Dispensary',
                      callback: () {},
                    ),
                    MainButton(
                      label: 'Consumer',
                      callback: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
