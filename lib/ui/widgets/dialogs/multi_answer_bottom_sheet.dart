import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../items/item_multianswer_popup_action.dart';

class MultiAnswerBottomSheet extends StatelessWidget {
  final String mainTitle;
  final String title;
  final String cancelButtonText;
  final List<ItemMultiAnswerPopupAction>? actionList;
  final Color titleColor;
  final bool isDivided;

  const MultiAnswerBottomSheet({
    Key? key,
    this.mainTitle = '',
    this.title = '',
    this.actionList,
    this.titleColor = blueberryGray,
    this.isDivided = false,
    this.cancelButtonText = 'Cancel',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {},
        child: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Visibility(
                      visible: mainTitle.isNotEmpty,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          mainTitle,
                          style: TextStyle(
                            color: titleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    if (title.isNotEmpty)
                      SizedBox(
                        //  width: DisplaySizeHelper.screenSize.width * .8,
                        child: Text(
                          title,
                          maxLines: 5,
                          style: const TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    if (isDivided)
                      const SizedBox(
                        height: 12,
                      ),
                    if (isDivided)
                      Divider(
                        height: 0.5,
                        color: greyTextColor.withOpacity(0.9),
                      ),
                    const SizedBox(
                      height: 12,
                    ),
                    ...actionList!,
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: AutoRouter.of(context).pop,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: 50,
                  child: Center(
                    child: Text(
                      cancelButtonText,
                      style: const TextStyle(
                        color: intBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
