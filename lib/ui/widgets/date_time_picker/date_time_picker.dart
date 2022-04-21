import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ohcds_mob_app/utils/colors/colors.dart';


class DateTimePicker {
  // ignore: body_might_complete_normally_nullable
  static Future<String?> selectTimePicker(BuildContext context, {DateTime? initialDate}) async {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    DateTime date = initialDate ?? DateTime.now();

    final DateTime? picked =
    await showDatePicker(context: context,builder: (context, child) {
      return Theme(
        data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
                onPrimary: Colors.black, // selected text color
                onSurface: AppColor.yellowColor, // default text color
                primary: AppColor.yellowColor,// circle color
            ),
            dialogBackgroundColor: AppColor.darkGrayBorderColor,
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        color: AppColor.yellowColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        fontFamily: 'Quicksand'),
                    primary: AppColor.yellowColor, // color of button's letters
                    backgroundColor: AppColor.darkGrayBorderColor, // Background color
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: AppColor.darkGrayBorderColor,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50))))),
        child: child!,
      );
    }, initialDate: date, firstDate: DateTime(1940), lastDate: DateTime.now());
    if (picked != null && picked != date) {
      date = picked;
      final String formatted = formatter.format(date);
      return formatted;
    }
  }
}