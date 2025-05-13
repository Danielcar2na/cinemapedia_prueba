import 'package:cinemapedia/presentation/screens/home_screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
    path: '/', 
    builder: (context, state) => const HomeScreen(),
    ),
    ],
);
