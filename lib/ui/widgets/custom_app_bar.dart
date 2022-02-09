import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final bool showBackButton;

  CustomAppBar({
    Key? key,
    this.showBackButton = true,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      foregroundColor: AppColors.secondAccent,
      automaticallyImplyLeading: showBackButton,
      centerTitle: true,
      backgroundColor: AppColors.lightGrayColor,
      title: SvgPicture.asset(
        'assets/images/ic_logo.svg',
        width: screenWidth(context) * .5,
      ),
    );
  }
}
