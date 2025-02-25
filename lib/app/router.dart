import 'package:go_router/go_router.dart';
import 'package:x_clone/components/drawer/custom_drawer.dart';
import 'package:x_clone/components/navigationbar/custom_navigation_bar.dart';
import 'package:x_clone/view/home/home_view.dart';
import 'package:x_clone/view/message/message_view.dart';
import 'package:x_clone/view/notifications/all_notifications_view.dart';
import 'package:x_clone/view/notifications/approved_view.dart';
import 'package:x_clone/view/notifications/mentioners_view.dart';
import 'package:x_clone/view/notifications/notifications_view.dart';
import 'package:x_clone/view/search/search_view.dart';

class AppRouter {
  final GoRouter route = GoRouter(
      initialLocation: "/search",
      routes: [
        //home
        GoRoute(path: "/home",builder: (context,state)=>HomeView()),
        GoRoute(path: "/navigation",builder: (context,state)=>CustomNavigationBar()),
        GoRoute(path: "/drawer",builder: (context,state)=>CustomDrawer()),

        //message
        GoRoute(path: "/message",builder: (context,state)=>MessageView()),

        //notifications
        GoRoute(path: "/notifications",builder: (context,state)=>NotificationsView()),
        GoRoute(path: "/allNotifications",builder: (context,state)=>AllNotificationsView()),
        GoRoute(path: "/approved",builder: (context,state)=>ApprovedView()),
        GoRoute(path: "/mentioners",builder: (context,state)=>MentionersView()),

        //search
        GoRoute(path: "/search",builder: (context,state)=>SearchView()),































      ]);
}