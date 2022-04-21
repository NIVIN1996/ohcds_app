import 'package:flutter/material.dart';


import '../../../utils/colors/colors.dart';

class CustomCheckBox extends StatefulWidget {
  final double width;
  final Color checkColor;
  final Color bgColor;
  final Function(bool) onChange;
  final bool selected;
  final double radius;
  const CustomCheckBox(
      {required this.selected,
        this.width = 30,
        this.radius = 8,
        this.checkColor = AppColor.darkGrayBorderColor,
        this.bgColor = AppColor.whiteColor,
        required this.onChange,
        Key? key})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChange(!widget.selected);
      },
      child: Container(
        decoration: BoxDecoration(color: widget.bgColor, borderRadius: BorderRadius.circular(widget.radius)),
        height: widget.width,
        width: widget.width,
        child: widget.selected
            ? Icon(
          Icons.check,
          color: widget.checkColor,
          size: widget.width,
        )
            : null,
      ),
    );
  }
}
