import 'package:go_router/go_router.dart';

import '../page/HomePage.dart';
import '../page/LoginPage.dart';

final router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginPage(),
      ),
    ],
);