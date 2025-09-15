
import 'package:flutter/material.dart';
import 'package:taskingdom/presentation/vip/presentation/screens/notification_screen.dart';

class AppRouter{
  static const String notification = '/notification';

  static final Map<String,Widget Function(BuildContext)> _routes ={
    notification:(context)=>const NotificationScreen(),

  };
  static Map<String,Widget Function(BuildContext)> get routes => _routes;

}
