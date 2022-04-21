import 'package:flutter/material.dart';
import 'package:ohcds_mob_app/utils/responsive_config/responsive_config.dart';

import 'custom_radio_button.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String _selectedGender = '0';

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.only(left:context.widthPx* 24.0,top: 10),
      child: Row(
        children: [
          CustomRadioWidget(
            height: 24,
            groupValue: _selectedGender,
            onChanged: (String value) {
              setState(() {
                _selectedGender = value;
              });
            },
            value: "0",
            label: "Male",
          ),
          CustomRadioWidget(
            height: 24,
            groupValue: _selectedGender,
            onChanged: (String value) {
              setState(() {
                _selectedGender = value;
              });
            },
            value: "1",
            label: "Female",
          ),
          CustomRadioWidget(
            height: 24,
            groupValue: _selectedGender,
            onChanged: (String value) {
              setState(() {
                _selectedGender = value;
                print(value);
              });
            },
            value: "2",
            label: "Other",
          ),
        ],
      ),
    );
  }
}
