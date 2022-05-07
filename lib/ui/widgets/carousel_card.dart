import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselCard extends StatelessWidget{

  const CarouselCard({required this.title,required this.height, required this.width});
  final double height;
  final double width;
  final String title;

	@override
	Widget build(BuildContext context){
    return Card(
      color: Theme.of(context).cardColor,
      child: Container(
          height: height/6,
          width: width/6,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          )),
    );
	}
}