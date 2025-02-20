import 'package:go_router/go_router.dart';
import 'package:x_clone/components/drawer/custom_drawer.dart';
import 'package:x_clone/components/navigationbar/custom_navigation_bar.dart';
import 'package:x_clone/view/home/home_view.dart';

class AppRouter {
  final GoRouter route = GoRouter(
      initialLocation: "/navigation",
      routes: [
        //home
        GoRoute(path: "/home",builder: (context,state)=>HomeView()),
        GoRoute(path: "/navigation",builder: (context,state)=>CustomNavigationBar()),
        GoRoute(path: "/drawer",builder: (context,state)=>CustomDrawer()),





























      ]);
}