import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadPage extends StatelessWidget {
  var height, width, size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    ScreenUtil.init(context, designSize: const Size(425, 570));
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: false,
              toolbarHeight: height / 9,
              automaticallyImplyLeading: true,
              snap: false,
              elevation: 0,
              backgroundColor: Colors.blue,
              floating: true,
              expandedHeight: height / 9,
              title: Text(
                'Read Article',
                style: TextStyle(fontSize: ScreenUtil().setSp(14.0)),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                width: width,
                height: ScreenUtil().setHeight(2.0),
                child: Container(
                  color: Colors.black,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                width: ScreenUtil().setWidth(width / 3),
                height: ScreenUtil().setHeight(height),
                child: Center(
                  child: Card(
                    color: Colors.grey[300],
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(8.0),
                        left: ScreenUtil().setHeight(8.0),
                        right: ScreenUtil().setHeight(8.0)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              'API Designing',
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(12)),
                            ),
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 24.0),
                          FittedBox(
                            child: Text(
                              'High quality APIs have security measurements, like\n' +
                                  'Authentication, Authorization, and Encryption\n' +
                                  'Being Able to design an API, is the building\n' +
                                  'block of being a good, and excellent Backend Developer\n\n' +
                                  'APIs are the key to make the communication between\n' +
                                  'client and the server possible\n' +
                                  'APIs are the key to communicate between the client,\n' +
                                  'and the server, and between your app and other devs',
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(10.0),
                              ),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                width: width,
                height: ScreenUtil().setHeight(height / 6),
                child: Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          'Faris Widaa',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setHeight(14.0)),
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Center(
                        child: Text(
                          'Thanks for Reading \n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setHeight(10.0)),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(
                          ScreenUtil().setHeight(4.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Created by Faris',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setHeight(10.0),
                              ),
                            ),
                            SizedBox(width: ScreenUtil().setWidth(2.0)),
                            Text(
                              'Hosted by ZoOol Makna',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setHeight(10.0)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
