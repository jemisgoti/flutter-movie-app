import 'package:flix_app/screens/PurchaseButton.dart';
import 'package:flix_app/utils/resources/flix_colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseMoreScreen extends StatefulWidget {
  bool isBackEnabled;

  PurchaseMoreScreen({this.isBackEnabled = true});

  @override
  _PurchaseMoreScreenState createState() => _PurchaseMoreScreenState();
}

class _PurchaseMoreScreenState extends State<PurchaseMoreScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //setStatusBarColor(primaryColor);
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: muvi_appBackground,
      appBar: widget.isBackEnabled.validate(value: true)
          ? appBarWidget('Get Your Own Flutter app',
              center: true, textColor: white, color: muvi_colorPrimary)
          : PreferredSize(child: Offstage(), preferredSize: Size(20, 20)),
      body: SizedBox(
        width: context.width(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: boxDecorationDefault(
                  shape: BoxShape.circle, color: muvi_appBackground),
              child: Image.asset('images/muvi/icons/ic_logo.png',
                  height: 150, width: 150),
            ),
            22.height,
            Text('This is the lite version of the Flix app',
                style: boldTextStyle(size: 22, color: Colors.white),
                textAlign: TextAlign.center),
            16.height,
            PurchaseButton(),
          ],
        ),
      ).paddingAll(16),
    );
  }
}
