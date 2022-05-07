import 'package:flutter/material.dart';

class SeperateLine extends StatelessWidget{

	const SeperateLine();

	@override
	Widget build(BuildContext context){
		return SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: 2.0,
                child: Container(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            );
	}
}