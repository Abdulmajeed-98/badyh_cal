import 'package:badyh_cal/core/models/category.dart';
import 'package:badyh_cal/core/views/screens/home_screen.dart';
import 'package:badyh_cal/core/views/screens/not_found_screen.dart';
import 'package:badyh_cal/core/views/screens/posts_screens.dart';
import 'package:badyh_cal/core/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic?> generatedRoute(RouteSettings settings){
    switch(settings.name){
      case '/home':return MaterialPageRoute(builder: (ctx)=>HomeScreen());
      case '/splash':return MaterialPageRoute(builder: (ctx)=>SplashScreen());
      case '/posts':
      {

        Category category=settings.arguments as Category;
        return MaterialPageRoute(builder: (ctx)=>PostsScreens(category: category,));
        
      }
      default:return MaterialPageRoute(builder: (ctx)=>NotFoundScreen());
    }
  }
}