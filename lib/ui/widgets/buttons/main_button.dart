import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String label;
  final VoidCallback? callback;
  final EdgeInsets? padding;
  final IconData? icon;

  const MainButton({
    Key? key,
    required this.label,
    this.callback,
    this.padding,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: AppColors.secondAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
          child: Row(
            children: [
              Icon(icon),
              Text(
                label,
                style: const TextStyle(
                  color: AppColors.lightGrayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
