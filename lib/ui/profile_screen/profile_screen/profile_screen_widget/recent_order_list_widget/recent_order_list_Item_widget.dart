import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/image_path/image_path.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_style/text_style.dart';
import '../../../../widgets/shimmer_widget/shimmer_widget.dart';


class RecentOrderListItem extends StatefulWidget {
  final int index;
  final String imageUrl;
  final String description;
  final String deliveryTime;
  final bool delivered;

  const RecentOrderListItem({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.description,
    required this.deliveryTime,
    required this.delivered,
  }) : super(key: key);

  @override
  _RecentOrderListItemState createState() => _RecentOrderListItemState();
}

class _RecentOrderListItemState extends State<RecentOrderListItem> {
  bool selectBookmark = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},

      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: context.heightPx * 0.0, bottom: context.widthPx * 10.0),
                child: CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(context.widthPx * 10),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => const ShimmerWidget(
                    radius: 10,
                  ),
                  errorWidget: (context, url, error) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(context.widthPx * 15),
                      image: const DecorationImage(
                        image: AssetImage(AppImages.noImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  height: context.heightPx * 60,
                  width: context.widthPx * 60,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.widthPx * 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: context.heightPx * 0.0, bottom: context.heightPx * 3.0),
                    child: Text(
                      widget.deliveryTime,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextFontStyle.heading(
                          size: context.textPx * 12,
                          color: widget.delivered == true ? AppColor.greenColor : AppColor.orangeColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.heightPx * 0.0, bottom: context.heightPx * 3.0),
                    child: Text(
                      widget.description,
                      textAlign: TextAlign.start,
                      style: TextFontStyle.heading(size: context.textPx * 12, color: AppColor.whiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                // final data = _myList[widget.index];
              },
              child: Icon(Icons.arrow_forward_ios, color: AppColor.whiteColor, size: context.widthPx * 13)),
        ],
      ),
    );
  }
}
