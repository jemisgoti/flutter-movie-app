import 'package:flix_app/screens/PurchaseMoreScreen.dart';
import 'package:flix_app/utils/flix_app_widgets.dart';
import 'package:flix_app/utils/resources/flix_colors.dart';
import 'package:flix_app/utils/resources/flix_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AccountSettingsScreen extends StatefulWidget {
  static String tag = '/AccountSettingsScreen';

  @override
  AccountSettingsScreenState createState() => AccountSettingsScreenState();
}

class AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: muvi_appBackground,
      appBar: appBarLayout(context, "Account Settings"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            subType(context, "Change Password", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PurchaseMoreScreen()));
            }, ic_password),
            subType(context, "Video Quality", () {}, ic_video),
            subType(context, "Download Settings", () {}, ic_download),
          ],
        ),
      ),
    );
  }
}
