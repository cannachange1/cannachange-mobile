import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'screen_size_accessor.dart';

void showCustomOverlayNotification({
  required Color color,
  required String text,
  Key? key,
  Duration duration = const Duration(seconds: 3),
}) {
  showOverlayNotification(
    (context) => SafeArea(
      child: GestureDetector(
        onVerticalDragStart: (_) {
          OverlaySupportEntry.of(context)!.dismiss();
        },
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: AppColors.mainLogoColor.withOpacity(0.3),
                  blurRadius: 30, // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: SizedBox(
                  width: screenWidth(context) * 0.8,
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightGrayColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    duration: duration,
    key: key,
  );
}

// OverlaySupportEntry showCustomOverlayNotificationForGeneralEvents({
//   Color color = white,
//   VoidCallback onTap,
//   String content,
//   Key key,
//   Duration duration = const Duration(seconds: 3),
// }) {
//   return showOverlayNotification(
//     (context) => SafeArea(
//       child: GestureDetector(
//         onTap: onTap,
//         onVerticalDragStart: (_) {
//           OverlaySupportEntry.of(context).dismiss();
//         },
//         child: Material(
//           color: Colors.transparent,
//           child: Container(
//             margin: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: const BorderRadius.all(Radius.circular(12)),
//               color: color,
//               boxShadow: [
//                 BoxShadow(
//                   color: lavenderGrey.withOpacity(0.3),
//                   blurRadius: 30, // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Center(
//                 child: SizedBox(
//                   width: DisplaySizeHelper.screenSize.width * 0.8,
//                   child: Text(
//                     content,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: ssDarkBlue),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     duration: duration,
//     key: key,
//   );
// }
//
// OverlaySupportEntry showCustomOverlayNotificationWithIcon({
//   Color color,
//   Color iconBackgroundColor,
//   VoidCallback onTap,
//   icon,
//   String title,
//   String subtitle,
//   Key key,
// }) {
//   return showOverlayNotification(
//     (context) => SafeArea(
//       child: Material(
//         color: Colors.transparent,
//         child: GestureDetector(
//           onTap: onTap,
//           onVerticalDragStart: (_) {
//             OverlaySupportEntry.of(context).dismiss();
//           },
//           child: Container(
//             margin: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: const BorderRadius.all(Radius.circular(12)),
//               color: color,
//               boxShadow: [
//                 BoxShadow(
//                   color: lavenderGrey.withOpacity(0.3),
//                   blurRadius: 30, // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 ListTile(
//                   leading: ClipOval(
//                     child: Container(
//                       width: 48,
//                       height: 48,
//                       color: iconBackgroundColor,
//                       child: ClipOval(
//                         child: icon,
//                       ),
//                     ),
//                   ),
//                   title: SizedBox(
//                     width: DisplaySizeHelper.screenSize.width * 0.5,
//                     height: 22,
//                     child: Text(
//                       title,
//                       style: const TextStyle(
//                           color: navyColor,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   subtitle: subtitle != null
//                       ? SizedBox(
//                           width: DisplaySizeHelper.screenSize.width * 0.5,
//                           child: Text(
//                             subtitle,
//                             style: const TextStyle(
//                                 color: navyColor,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w500),
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 2,
//                           ),
//                         )
//                       : null,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//     key: key,
//     duration: const Duration(seconds: 4),
//   );
// }
