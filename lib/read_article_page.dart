import 'package:flutter/material.dart';

import 'package:faris_blog/ui/widgets/seperate_line.dart';
import 'package:faris_blog/ui/utils/utils.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class ArticlePage extends StatelessWidget {
  var height, width, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    Widget smallScreenContent(){
      return SliverToBoxAdapter(
              child: Container(
                width: ScreenUtil().setWidth(width),
                child:Card(
                    color: Theme.of(context).cardColor,
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(8.0),
                        left: ScreenUtil().setHeight(8.0),
                        right: ScreenUtil().setHeight(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              'API Designing',
                              style:Theme.of(context).textTheme.bodyText1,
                            ),
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 24.0),
                          FittedBox(
                            child: Text(
                              article,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
            );
  }
  Widget largeScreenContent(){
    return SliverToBoxAdapter(
              child: Container(
                width: ScreenUtil().setWidth(width / 3),
                child: Center(
                  child: Card(
                    color: Theme.of(context).cardColor,
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(8.0),
                        left: ScreenUtil().setHeight(8.0),
                        right: ScreenUtil().setHeight(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              'API Designing',
                              style:Theme.of(context).textTheme.bodyText1,
                            ),
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 24.0),
                          FittedBox(
                            child: Text(
                              article,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
  }
  
    return Scaffold(
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: false,
              toolbarHeight: height / 9,
              automaticallyImplyLeading: true,
              snap: false,
              elevation: 0,
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              floating: true,
              expandedHeight: height / 9,
              title: Text(
                'Read Article',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),

            SeperateLine(),

            (width>largeScreenSize)?largeScreenContent():smallScreenContent(),
            
          ],
        ),
    );
  }


}
