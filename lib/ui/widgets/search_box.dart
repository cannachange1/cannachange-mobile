import 'package:flutter/material.dart';

import '../../values/values.dart';

class SearchBox extends StatelessWidget {
  final String hintText;
  final BorderRadius? borderRadius;
  final Color? fontColor;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? hintStyle;
  final bool filled;
  final Widget? suffixIcon;
  final TextEditingController? textEditingController;
  final Function(String)? onChanged;

  const SearchBox(
      {required this.hintText,
      this.textEditingController,
      this.onChanged,
      this.borderRadius,
      this.fontColor,
      this.fillColor,
      this.suffixIcon,
      this.borderColor,
      this.hintStyle,
      this.filled = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          // Container(
          //  // height: 60,
          //   decoration: BoxDecoration(
          //     color: AppColors.secondAccent,
          //     borderRadius: const BorderRadius.all(
          //       Radius.circular(8),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //           color: AppColors.primaryText2.withOpacity(.13),
          //           blurRadius: 10,
          //           spreadRadius: 5),
          //     ],
          //   ),
          // ),
          TextField(
            onChanged: onChanged,
            controller: textEditingController,
            style:
                TextStyle(fontSize: 16, color: fontColor ?? AppColors.darkGrey),
            decoration: InputDecoration(
              filled: filled,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.secondAccent),
                  borderRadius: borderRadius ?? BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.secondAccent),
                  borderRadius: borderRadius ?? BorderRadius.circular(10)),
              fillColor: fillColor ?? AppColors.lightGrayColor,
              hintText: hintText,
              hintStyle: hintStyle ?? const TextStyle(fontSize: 16),
              suffixIcon: const Icon(
                Icons.search,
                color: AppColors.mainLogoColor,
              ),
              contentPadding:
                  const EdgeInsets.only(left: 14, bottom: 20, top: 20),
            ),
          ),
        ],
      ),
    );
  }
}
