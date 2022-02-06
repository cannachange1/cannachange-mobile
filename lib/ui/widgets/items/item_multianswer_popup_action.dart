import 'package:flutter/material.dart';

import '../../../app_theme.dart';

class ItemMultiAnswerPopupAction extends StatelessWidget {
  final VoidCallback? onActionPressed;
  final String? actionName;
  final bool? isLastAction;
  final Color? textColor;

  const ItemMultiAnswerPopupAction({
    Key? key,
    this.actionName,
    this.onActionPressed,
    this.textColor,
    this.isLastAction = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onActionPressed,
            child: Container(
              padding: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: isLastAction! ? BorderRadius.circular(20) : null,
              ),
              height: 50,
              child: Center(
                child: Text(
                  actionName!,
                  style: TextStyle(
                    color: textColor ?? primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          if (!isLastAction!)
            Divider(
              height: 0.5,
              color: paleGrey.withOpacity(0.9),
            ),
        ],
      );
}
