import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/models/order_model/order_model.dart';
import 'package:ohcds_mob_app/ui/profile_screen/profile_screen/profile_screen_widget/recent_order_list_widget/recent_order_list_Item_widget.dart';

import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import '../../../../../models/order_model/recent_order_model.dart';
import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_style/text_style.dart';





class RecentOrderWidget extends StatefulWidget {
  final String heading;
  const RecentOrderWidget({Key? key, required this.heading}) : super(key: key);

  @override
  State<RecentOrderWidget> createState() => _RecentOrderWidgetState();
}

class _RecentOrderWidgetState extends State<RecentOrderWidget> {
  RecentOrderModel? recentOrderModel;
  bool isExpanded = false;
  List<RecentOrder> recentItem = [
    RecentOrder(
        url: "https://picsum.photos/250?image=9",
        deliveryTime: 'Delivery expected by Thu Mar 10',
        description: 'Bruce Springsteen - Streets of Philadelphia',
        delivered: true),
    RecentOrder(
        url: "https://picsum.photos/250?image=9",
        deliveryTime: 'Delivered on Mar 25',
        description: 'The white Stripes - Offend in Every Way',
        delivered: false),
    RecentOrder(
        url: "https://picsum.photos/250?image=9",
        deliveryTime: 'Delivered on Nov 25,2021',
        description: 'Dirty Dancing:Havana Nights',
        delivered: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.darkGrayBorderColor,
      ),
      child: ListTileTheme(
        dense: true,
        child: ExpansionTile(
          trailing: Icon(
            isExpanded ? Icons.remove : Icons.add,
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
              padding: EdgeInsets.symmetric(horizontal: context.widthPx * 15, vertical: context.heightPx * 10),
              margin: EdgeInsets.only(
                  left: context.widthPx * 12, right: context.widthPx * 12, bottom: context.widthPx * 10),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: recentItem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RecentOrderListItem(
                    description: recentItem[index].description,
                    imageUrl: recentItem[index].url,
                    deliveryTime: recentItem[index].deliveryTime,
                    index: index, delivered: recentItem[index].delivered,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                    color: AppColor.darkGrayBorderColor,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
