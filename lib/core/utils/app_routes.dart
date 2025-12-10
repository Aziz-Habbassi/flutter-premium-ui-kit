import 'package:appadaptiveui/features/views/home/home_view.dart';
import 'package:appadaptiveui/features/views/profil/profil_view.dart';
import 'package:appadaptiveui/features/widgets/shared_widgets/home_body.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        return HomeView(child: child);
      },
      routes: [
        GoRoute(path: "/", builder: (context, state) => HomeBody()),
        GoRoute(path: "/profile", builder: (context, state) => ProfilView()),
        GoRoute(path: "/Settings", builder: (context, state) => HomeBody()),
        GoRoute(path: "/Logout", builder: (context, state) => HomeBody()),
      ],
    ),
  ],
);
