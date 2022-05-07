import 'package:flutter/material.dart';

import 'package:faris_blog/ui/theme.dart';
import 'package:faris_blog/ui/utils/utils.dart';
import 'package:faris_blog/read_article_page.dart';
import 'package:faris_blog/ui/widgets/seperate_line.dart';
import 'package:faris_blog/ui/widgets/app_information.dart';
import 'package:faris_blog/ui/widgets/carousel_card.dart';
import 'package:faris_blog/ui/utils/utils.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const BlogApp());
}


class BlogApp extends StatelessWidget {
  const BlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:mockupScreenSize,
      minTextAdapt: true,
      splitScreenMode:true,
      builder:(_){
        return MaterialApp(
          title: 'Faris Blog',
          useInheritedMediaQuery: true,
          theme: blogDarkTheme,
          home: const MyHomePage(title: 'Faris Blog'),
        );
      }
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var size, height, width;
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              flexibleSpace: Stack(
                children:[
                  Positioned.fill(
                    child:Image(image: AssetImage('images/matrix.jpg'),fit:BoxFit.cover),
                  ),
                ],
              ),
              pinned: false,
              toolbarHeight: height / 9,
              automaticallyImplyLeading: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                    right: 16.0,
                    left: 8.0,
                    bottom: 8.0,
                  ),

                  child: TextButton(
                      child: Text(
                        'Articles',
                        style:Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context) => ArticlePage()),
                            );
                          },
                          ),
                ),
                FittedBox(
                  child: IconButton(
                    iconSize: ScreenUtil().setHeight(16.0),
                    icon: Icon(Icons.menu),
                    onPressed: () {
                     
                    },
                  ),
                ),
              ],
              snap: false,
              elevation: 0,
              floating: true,
              expandedHeight: height / 3,
              title: Text(
                'Faris Widaa',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),

            SeperateLine(),

            SliverToBoxAdapter(
              child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        gradient: LinearGradient(
                          colors: [Colors.green.shade800, Colors.green.shade300],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                width: width,
                height: 100.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          'Sign in to our Newsletter to get the latest updates',
                          style: Theme.of(context).textTheme.bodyText2
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: TextButton(
                          child: Text(
                            'Sign in',
                            style:Theme.of(context).textTheme.bodyText1
                          ),
                          onPressed: () => {
                            print('Sign in'),
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SeperateLine(),

            (width >= largeScreenSize) ? buildForLargeScreen() : buildForSmallScreen(),

            SeperateLine(),

            (width >= largeScreenSize) ? articleNoteLargeScreen() : articleNoteSmallScreen(),

            SeperateLine(),

            (height>=smallScreenSize)?AppInformation(height:height):SeperateLine(),
          ],
        ),
      ),
    );
  }

  Widget articleNoteLargeScreen(){
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Card(
                          child:Padding(
                            padding:EdgeInsets.all(8.0),
                            child: Column(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              FittedBox(
                                fit: BoxFit.fill,
                                child: Text(articleNote,
                                style:Theme.of(context).textTheme.bodyText2,
                                ),
                              ),

                              TextButton(
                                child:Text('Read More',
                                  style:Theme.of(context).textTheme.bodyText2,),
                                  onPressed:()=>{},
                              ),
                          ],
                        ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:Card(
                          color:Colors.green.shade600,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children :[
                            Text('Signup for our newsletter',style:Theme.of(context).textTheme.bodyText1,),
                            SizedBox(height: 12.0),
                            TextField(
                              style:Theme.of(context).textTheme.bodyText2,
                              controller: nameEditingController,
                              decoration: InputDecoration(filled: true, labelText: 'User Name'),
                            ),
                            SizedBox(height: 12.0),
                            TextField(
                              style:Theme.of(context).textTheme.bodyText2,
                              controller: passwordEditingController,
                              decoration: InputDecoration(filled: true, labelText: 'Password',),
                              obscureText: true,
                            ),
                            SizedBox(height: 12.0),
                            TextButton(
                                child: Text(
                                  'Sign in',
                                  style:Theme.of(context).textTheme.bodyText1
                                ),
                                onPressed: () => {
                                  print('Sign in'),
                                },
                            ),

                        ],
                      ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }

  Widget articleNoteSmallScreen(){
    return SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child:Column(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              FittedBox(
                                fit: BoxFit.fill,
                                child: Text(articleNote,
                                style:Theme.of(context).textTheme.bodyText1,
                                ),
                              ),

                              TextButton(
                                child:Text('Read More',
                                  style:Theme.of(context).textTheme.bodyText1,),
                                  onPressed:()=>{},
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: ScreenUtil().setHeight(24.0)),

                      Center(
                        child:Card(
                            color:Colors.green.shade600,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                              mainAxisAlignment:MainAxisAlignment.start,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children :[
                          Center(child:Text('Signup for our newsletter',style:Theme.of(context).textTheme.bodyText1,),),

                          TextField(
                            style:Theme.of(context).textTheme.bodyText1,
                            controller: nameEditingController,
                            decoration: InputDecoration(filled: true, labelText: 'User Name'),
                          ),
                          SizedBox(height: 12.0),
                          TextField(
                            style:Theme.of(context).textTheme.bodyText1,
                            controller: passwordEditingController,
                            decoration: InputDecoration(filled: true, labelText: 'Password'),
                            obscureText: true,
                          ),
                          SizedBox(height: 12.0),
                          TextButton(
                            child: Text(
                            'Sign in',
                            style:Theme.of(context).textTheme.bodyText1
                          ),
                            onPressed: () => {
                              print('Sign in'),
                            },
                          ),
                        ],
                      ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
  Widget buildForLargeScreen(){
    return SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding:EdgeInsets.all(8.0),
                            child:Text(farisWidaa,
                              style:Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding:EdgeInsets.all(8.0),
                            child:Text(
                              listOfArticles,
                              style:Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }

  Widget buildForSmallScreen(){
    return SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                  child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        child:Padding(
                          padding:EdgeInsets.all(8.0),
                          child:FittedBox(
                            fit: BoxFit.fill,
                            child: Text(farisWidaa,
                              style:Theme.of(context).textTheme.bodyText1,),
                          ),
                        ),
                      ),

                      SizedBox(height: 24.0),

                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child:FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              listOfArticles,
                              style:Theme.of(context).textTheme.bodyText1,),
                      ),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              ),
            );
  }
}
