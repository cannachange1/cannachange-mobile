import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String label;
  final VoidCallback? callback;
  final EdgeInsets? padding;
  final IconData? icon;
  final Color? color;

  const MainButton({
    Key? key,
    required this.label,
    this.callback,
    this.padding,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: color ?? AppColors.secondAccent,
        ),
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) Icon(icon),
              Text(
                label,
                style: const TextStyle(
                  color: AppColors.lightGrayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
