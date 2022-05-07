import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:faris_blog/ui/utils/utils.dart';

ThemeData blogLightTheme = _buildBlogLightTheme();
ThemeData blogDarkTheme = _buildBlogDarkTheme();

ThemeData _buildBlogLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    dialogTheme: DialogTheme(
      elevation: 8.0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),
    ),
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      contentPadding: const EdgeInsets.all(4.0),
    ),
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: Colors.black,
    ),
    appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(color: Colors.white), elevation: 0.0,
        backgroundColor: Colors.orangeAccent,
        ),
    accentColor: Colors.orange,
    primaryColor: Colors.black,
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.blue,
    errorColor: Colors.red,
    primaryIconTheme: base.iconTheme.copyWith(color: Colors.black),
    textTheme: _buildBlogAppTextTheme(base.textTheme),
    primaryTextTheme: _buildBlogAppTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildBlogAppTextTheme(base.accentTextTheme),
  );
}

ThemeData _buildBlogDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    dialogTheme: DialogTheme(
      elevation: 8.0,
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.black),
    ),
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      hintStyle: TextStyle(
        color: Colors.white,
      ),
      contentPadding: const EdgeInsets.all(4.0),
    ),
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(color: Colors.white), elevation: 0.0,
        backgroundColor: Colors.green[800],
        ),
    accentColor: Colors.green,
    primaryColor: Colors.white,
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    scaffoldBackgroundColor: Colors.black,
    cardColor: Colors.grey[850],
    errorColor: Colors.red,
    primaryIconTheme: base.iconTheme.copyWith(color: Colors.white),
    textTheme: _buildBlogAppTextTheme(base.textTheme),
    primaryTextTheme: _buildBlogAppTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildBlogAppTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildBlogAppTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5?.copyWith(
          fontSize: ScreenUtil().setSp(24.0),
          color:Colors.white,
        ),
        headline6: base.headline6?.copyWith(fontSize: 26.0),
        caption: base.caption?.copyWith(
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1?.copyWith(
          fontSize: ScreenUtil().setSp(20.0),
        ),
        bodyText2: base.bodyText2?.copyWith(
          fontSize: ScreenUtil().setSp(18.0),
        ),
      )
      .apply(
        fontFamily: 'Outfit',
      );
}
