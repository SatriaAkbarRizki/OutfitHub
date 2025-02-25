import 'package:go_router/go_router.dart';
import 'package:outfithub/navigation/navbar.dart';
import 'package:outfithub/screen/detail.dart';
import 'package:outfithub/screen/signin.dart';
import 'package:outfithub/screen/signup.dart';

final routerNav = GoRouter(initialLocation: SigninScreen.routeName, routes: [
  GoRoute(
    path: SigninScreen.routeName,
    builder: (context, state) => SigninScreen(),
  ),
  GoRoute(
    path: SignupScreen.routeName,
    builder: (context, state) => SignupScreen(),
  ),
  GoRoute(path: DetailScreen.rouieName, builder: (context, state) => DetailScreen(),),
  GoRoute(path: Navbar.routeName, builder: (context, state) => Navbar(),),
]);
