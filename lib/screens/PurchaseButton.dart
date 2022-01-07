import 'package:flix_app/utils/flix_app_widgets.dart';
import 'package:flix_app/utils/flix_constants.dart';
import 'package:flix_app/utils/resources/flix_colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Contact Us',
      color: muvi_colorPrimary,
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launchURL(purChaseUrl);
      },
    );
  }
}
