import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_style/text_style.dart';


class UserDetailsWidget extends StatefulWidget {
  final String heading;
  const UserDetailsWidget({Key? key, required this.heading}) : super(key: key);

  @override
  State<UserDetailsWidget> createState() => _UserDetailsWidgetState();
}

class _UserDetailsWidgetState extends State<UserDetailsWidget> {
  bool isExpanded=false;
  @override
  Widget build(BuildContext context) {
    return Container(
// height:context.heightPx* 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
          color: AppColor.darkGrayBorderColor,
      ),
      child: ListTileTheme(
        dense: true,
        child: ExpansionTile(
          trailing:  Icon(
            isExpanded? Icons.remove:Icons.add,
            size: 25,
            color: AppColor.whiteColor,
          ),
          onExpansionChanged: (bool expanded) {
            setState(() => isExpanded = expanded);
          },

          title: Text(

            widget.heading,
            style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 16),
          ),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.primaryColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: context.widthPx * 15, vertical:context.heightPx* 10),
              margin: EdgeInsets.only(left: context.widthPx * 12,right: context.widthPx * 12,bottom:context.widthPx* 10),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                        child: Text(
                          'First Name',
                          textAlign: TextAlign.start,
                          style:
                          TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                        child: Text(
                          'Last Name',
                          textAlign: TextAlign.start,
                          style:
                          TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                        child: Text(
                          'Gender',
                          textAlign: TextAlign.start,
                          style:
                          TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                        child: Text(
                          'Date of Birth',
                          textAlign: TextAlign.start,
                          style:
                          TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: context.widthPx * 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            ':',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            ':',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            ':',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            ':',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: context.widthPx * 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            'John',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            'Doe',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            'Male',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
                          child: Text(
                            '26 Mar 1994',
                            textAlign: TextAlign.start,
                            style: TextFontStyle.gothamW700(
                                color: AppColor.whiteColor, size: context.textPx * 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class UserDetailsWidget extends StatelessWidget {
//   const UserDetailsWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     bool senderExpansion=true;
//     return Positioned(
//       child: Card(
//         color: AppColor.darkGrayBorderColor,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 0.0, left: 6.0, right: 6.0, bottom: 6.0),
//           child: ExpansionTile(
//             trailing: const Icon(
//               Icons.add,
//               color: AppColor.whiteColor,
//             ),
//             onExpansionChanged: (bool expanded) {
//               setState(() => senderExpansion = expanded);
//             },
//
//             title: Text(
//               'Personal Details',
//               style: TextFontStyle.heading(color: AppColor.whiteColor, size: context.textPx * 16),
//             ),
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: AppColor.primaryColor,
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: context.widthPx * 20, vertical: 10),
//                 margin: EdgeInsets.symmetric(horizontal: context.widthPx * 5),
//                 child: Row(
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                           child: Text(
//                             'First Name',
//                             textAlign: TextAlign.start,
//                             style:
//                             TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                           child: Text(
//                             'Last Name',
//                             textAlign: TextAlign.start,
//                             style:
//                             TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                           child: Text(
//                             'Gender',
//                             textAlign: TextAlign.start,
//                             style:
//                             TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                           child: Text(
//                             'Date of Birth',
//                             textAlign: TextAlign.start,
//                             style:
//                             TextFontStyle.gothamW700(color: AppColor.whiteColor, size: context.textPx * 13),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: context.widthPx * 30.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               ':',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               ':',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               ':',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               ':',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: context.widthPx * 50.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               'John',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               'Doe',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               'Male',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: context.heightPx * 5.0),
//                             child: Text(
//                               '26 Mar 1994',
//                               textAlign: TextAlign.start,
//                               style: TextFontStyle.gothamW700(
//                                   color: AppColor.whiteColor, size: context.textPx * 13),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
