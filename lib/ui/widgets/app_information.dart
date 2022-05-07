import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInformation extends StatelessWidget{

    const AppInformation({required this.height});
    final double height;

    @override 
    Widget build(BuildContext context){

      Widget createdAndHosted(){
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Created by Faris',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(width: ScreenUtil().setWidth(8.0)),
              Text(
                'Hosted by ZoOol Makna',
                 style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
        );
    }
      Widget largeScreenContent(){
        return SliverToBoxAdapter(
                  child: SizedBox(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(height / 4),
                    child: Container(
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize:MainAxisSize.max,
                        children: [
                          Column(
                            children:[ Center(
                            child: Text(
                              'Faris Widaa',
                              style:Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(4.0)),
                          Center(
                            child: Text(
                              'Thanks for Reading \n',
                              style:Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          ],
                          ),
                          Spacer(),
                          createdAndHosted(),
                        ],
                      ),
                    ),
                  ),
                );
    }

    Widget smallScreenContent(){
      return SliverToBoxAdapter(
        child :SizedBox(
          width: double.infinity,
          height: ScreenUtil().setHeight(height/4),
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.center,
              children:[
                Padding(
                    padding:const EdgeInsets.all(8.0),
                    child:Text(
                          'Faris Widaa',
                            style:Theme.of(context).textTheme.bodyText1,
                      ),
                  ),
                createdAndHosted(),
              ],
            ),
          ),
        ),
      );
    }

      return (height > 500) ? largeScreenContent()
         : smallScreenContent();
    }

}