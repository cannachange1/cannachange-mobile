import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';

class OutlinedMainButton extends StatelessWidget {
  final String label;
  final String smallText;
  final VoidCallback? callback;
  final EdgeInsets? padding;

  const OutlinedMainButton({
    Key? key,
    required this.label,
    this.callback,
    this.padding,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: padding ?? const EdgeInsets.symmetric(horizontal: 30),
      width: screenWidth(context),
      child: ClipRRect(
        //  borderRadius: AppRadius.primaryRadius,
        child: OutlinedButton(
          onPressed: callback,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
           // side: const BorderSide(width: 3, color: AppColors.darkBlueColor),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: AppColors.mainBlueColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                smallText,
                style: const TextStyle(
                  color: AppColors.mainBlueColor,
                  fontSize: 10,
                  // fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}
