import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';
import '../../../utils/colors/colors.dart';
import '../../../utils/text_style/text_style.dart';

class DropDownWidget extends StatefulWidget {
  final String? labelText;

  final TextEditingController controller;
  final EdgeInsets? contentPadding;
  final bool edit;
  final String? Function(String?)? validation;
  final TextInputType? keyboardType;
  final bool obscureText;
  final FocusNode? focusNode;
  final Function(String)? onChange;
  final int maxLength;
  final String label;
  final int line;
  final EdgeInsets? padding;
  final Function? onTap;
  final bool showEyeIcon;
  final Color iconColor;
  final String? validationText;
  const DropDownWidget({
    this.labelText,
    required this.controller,
    this.contentPadding,
    this.keyboardType,
    this.validation,
    this.edit = true,
    this.obscureText = false,
    this.onChange,
    this.maxLength = 100,
    this.padding,
    this.line = 1,
    this.onTap,
    this.iconColor = Colors.grey,
    this.showEyeIcon = false,
    this.validationText,
    this.focusNode,
    Key? key,
    this.label = "",
  }) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.symmetric(vertical: context.heightPx * 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: context.widthPx * 24, bottom: context.heightPx * 10),
            child: Text(
              widget.label,
              style: TextFontStyle.gothamText(size: context.textPx * 15, color: AppColor.whiteColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: context.widthPx * 20.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: widget.controller,
              maxLines: widget.line,
              enabled: widget.edit,
              keyboardType: widget.keyboardType,
              focusNode: widget.focusNode,
              maxLength: widget.maxLength,
              validator: widget.validation,
              onChanged: widget.onChange,
              onTap: () {
                if (widget.onTap != null) {
                  widget.onTap!();
                }
              },
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColor.darkGrayColor, width: 2)),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColor.yellowColor, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  suffixIcon: (widget.showEyeIcon)
                      ? IconButton(
                    splashColor: Colors.transparent,
                    splashRadius: 1,
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(Icons.arrow_drop_down_outlined),
                    color: widget.iconColor,
                  )
                      : null,
                  filled: true,
                  fillColor: AppColor.darkGrayBorderColor,
                  counterText: "",
                  hintText: widget.labelText,
                  hintStyle: TextFontStyle.gothamText(size: context.textPx * 16, color: AppColor.borderGrayColor),
                  contentPadding: widget.contentPadding ??
                      EdgeInsets.symmetric(
                          vertical: context.heightPx * context.screenWidth > 600 ? 25 : 12,
                          horizontal: context.widthPx * context.screenWidth > 600 ? 18 : 15)),
              style: TextFontStyle.gothamText(color: AppColor.borderGrayColor, size: context.textPx * 16),
              textAlignVertical: widget.showEyeIcon ? TextAlignVertical.center : null,
            ),
          ),
          if (widget.validationText != null)
            Text(
              widget.validationText!,
              style: TextFontStyle.regular(size: context.textPx * 12, color: AppColor.redColor),
            )
        ],
      ),
    );
  }
}
