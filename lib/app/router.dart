import 'package:go_router/go_router.dart';
import 'package:x_clone/view/home/home_view.dart';

class AppRouter {
  final GoRouter route = GoRouter(
      initialLocation: "/home",
      routes: [
        //home
        GoRoute(path: "/home",builder: (context,state)=>HomeView()),




























      ]);
}