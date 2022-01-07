import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flix_app/models/flix_response.dart';
import 'package:flix_app/utils/flix_app_widgets.dart';
import 'package:flix_app/utils/flix_data_generator.dart';
import 'package:flix_app/utils/resources/flix_colors.dart';
import 'package:flix_app/utils/resources/flix_size.dart';
// ignore: must_be_immutable
class ViewAllMovieScreen extends StatefulWidget {
  static String tag = '/ViewAllMovieScreen';
  String? title = "";

  ViewAllMovieScreen({this.title});

  @override
  ViewAllMovieScreenState createState() => ViewAllMovieScreenState();
}

class ViewAllMovieScreenState extends State<ViewAllMovieScreen> {
  List<Movie> movieList = [];

  @override
  void initState() {
    super.initState();
    movieList.addAll(getMadeForYouMovie());
  }

  @override
  Widget build(BuildContext context) {
    var allMovieList = AllMovieGridList(movieList);
    return Scaffold(
      backgroundColor: muvi_appBackground,
      appBar: appBarLayout(context, widget.title),
      body: allMovieList,
    );
  }
}
