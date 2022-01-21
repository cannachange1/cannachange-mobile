import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class TextInput extends StatefulWidget {
  final String hintText;
  final bool hasSuffix;
  final bool hasLightWeight;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? errorText;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets? padding;
  final TextInputType keyboardType;
  final int? minLines;
  final int? maxLines;
  final Color? textColor;
  final Color? hintColor;

  const TextInput({
    required this.hintText,
    Key? key,
    this.focusNode,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.textInputAction,
    this.errorText,
    this.hasSuffix = false,
    this.inputFormatters,
    this.padding,
    this.minLines,
    this.maxLines,
    this.textColor,
    this.hintColor,
    this.hasLightWeight = false,
  }) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.hasSuffix;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 40),
        child: TextField(
          style: TextStyle(
            color: widget.textColor ?? AppColors.dasrkGrey,
          ),
          obscureText: isObscure,
          focusNode: widget.focusNode,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          inputFormatters: widget.inputFormatters,
          minLines: widget.minLines?? 1,
          maxLines: widget.maxLines ?? 1,

          decoration: InputDecoration(
            disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.dasrkGrey,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.dasrkGrey,
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.dasrkGrey,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.dasrkGrey,
              ),
            ),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                // width: 1.5,
                color: AppColors.dasrkGrey,
              ),
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                // width: 1.5,
                color: AppColors.dasrkGrey,
              ),
            ),
            hintMaxLines: 1,
            hintStyle: TextStyle(
                color:
                    widget.hintColor ?? AppColors.secondAccent.withOpacity(.85),
                fontSize: 14,
                height: 2,
                fontWeight:
                    widget.hasLightWeight ? FontWeight.w400 : FontWeight.w600),
            errorText: widget.errorText ?? ' ',
            errorMaxLines: 2,
            errorStyle: const TextStyle(
              fontSize: 10,
              height: .8,
              color: AppColors.errorRed,
            ),
            hintText: widget.hintText,
            suffixIcon: widget.hasSuffix
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    iconSize: 16,
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    color: AppColors.secondAccent,
                  )
                : null,
          ),
          controller: widget.controller,
        ),
      ),
    );
  }
}
