import 'package:flix_app/screens/PurchaseMoreScreen.dart';
import 'package:flix_app/screens/flix_account_settings_screen.dart';
import 'package:flix_app/screens/flix_edit_profile_screen.dart';
import 'package:flix_app/screens/flix_help_screen.dart';
import 'package:flix_app/screens/flix_terms_conditions_screen.dart';
import 'package:flix_app/utils/flix_app_widgets.dart';
import 'package:flix_app/utils/flix_constants.dart';
import 'package:flix_app/utils/resources/flix_colors.dart';
import 'package:flix_app/utils/resources/flix_images.dart';
import 'package:flix_app/utils/resources/flix_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MoreFragment extends StatefulWidget {
  static String tag = '/MoreFragment';

  @override
  MoreFragmentState createState() => MoreFragmentState();
}

class MoreFragmentState extends State<MoreFragment> {
  var profileImage = "";
  var userName = "";
  var userEmail = "";
  bool? isDarkMode = true;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: muvi_appBackground,
      appBar: AppBar(
        title: toolBarTitle(context, "More"),
        backgroundColor: muvi_navigationBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: muvi_navigationBackground,
            padding: EdgeInsets.only(left: spacing_standard_new, top: spacing_standard_new, right: 12, bottom: spacing_standard_new),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  child: networkImage(profileImage),
                ).paddingRight(spacing_standard_new),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('userName',style: TextStyle(fontFamily: font_bold,color: muvi_textColorPrimary),),
                      // text(
                      //   userName,
                      //   fontSize: ts_extra_normal,
                      //   fontFamily: font_bold,
                      //   textColor: muvi_textColorPrimary,
                      // ),
                      Text('userEmail',style: TextStyle(fontFamily: font_bold,color: muvi_textColorPrimary),),

                    ],
                  ),
                ),
                Image.asset(
                  ic_edit_profile,
                  width: 20,
                  height: 20,
                  color: muvi_colorPrimary,
                ).paddingAll(spacing_control).onTap(() {
                  PurchaseMoreScreen().launch(context);
                })
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  itemSubTitle(context, "General Settings", colorThird: false).paddingOnly(left: spacing_standard_new, right: spacing_standard_new, top: 12, bottom: 12),
                  subType(context, "Account Settings", () {
                    AccountSettingsScreen().launch(context);
                  }, ic_settings),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        ic_dark_mode,
                        width: 20,
                        height: 20,
                        color: muvi_textColorThird,
                      ).paddingRight(spacing_standard),
                      Expanded(child: itemTitle(context, "Dark Mode")),
                      Theme(
                        data: Theme.of(context).copyWith(
                          unselectedWidgetColor: muvi_colorPrimary,
                        ),
                        child: Checkbox(
                          activeColor: muvi_colorPrimary,
                          checkColor: muvi_navigationBackground,
                          value: isDarkMode,
                          onChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          },
                        ),
                      )
                    ],
                  ).paddingOnly(left: spacing_standard_new, right: spacing_control, top: spacing_control, bottom: spacing_control).onTap(() {
                    setState(() {
                      isDarkMode = !isDarkMode!;
                    });
                  }),
                  subType(context, "Language", () {}, ic_language),
                  subType(context, "Help", () {
                    PurchaseMoreScreen().launch(context);
                  }, ic_help),
                  itemSubTitle(context, "Terms").paddingOnly(left: spacing_standard_new, right: 12, top: spacing_standard_new, bottom: spacing_control),
                  subType(context, "Terms & Conditions", () {
                    PurchaseMoreScreen().launch(context);
                  }, null),
                  subType(context, "Privacy & Policy", () {
                    PurchaseMoreScreen().launch(context);
                  }, null),
                  subType(context, "Logout", () {}, null),
                ],
              ).paddingBottom(spacing_large),
            ),
          )
        ],
      ),
    );
  }

  void getUserData() {
    setState(() {
      profileImage = "images/muvi/items/oval_ek1.png";
      userName = "Vicotria Becks";
      userEmail = "vicotriabecks@gmail.com";
    });
  }
}
