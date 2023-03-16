import 'package:flutter/material.dart';
import 'package:newsapp/detail_news_screen.dart';
import 'package:newsapp/kdrama_screen.dart';
import 'package:newsapp/more_news.dart';
import 'package:newsapp/news_screen.dart';
import 'model/article.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      /*
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
      initialRoute: KdramaScreen.routeName,
      routes: {
        MoreNewsScreen.routeName: (context)=> MoreNewsScreen(
            article: ModalRoute.of(context)?.settings.arguments as Article
        ),
        NewsScreen.routeName: (context)=>const NewsScreen(),
        KdramaScreen.routeName: (context)=>const KdramaScreen(),
        DetailNewsScreen.routeName: (context)=> DetailNewsScreen(
          article: ModalRoute.of(context)?.settings.arguments as Article
        ),
      },
    );
  }
}
