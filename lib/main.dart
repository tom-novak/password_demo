import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:password_demo/application/application.dart';

void main() {
  runApp(PasswordDemoApp());
}

class PasswordDemoApp extends StatelessWidget {
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const PasswordListPage(),
        routes: [
          GoRoute(
            name: 'detail',
            path: 'detail/:itemId',
            builder: (context, state) => PasswordDetailPage(
              itemId: state.params['itemId'],
            ),
            routes: [
              GoRoute(
                name: 'edit',
                path: 'edit',
                builder: (context, state) => EditPasswordPage(
                  itemId: state.params['itemId'],
                ),
              ),
            ],
          ),
          GoRoute(
            name: 'new',
            path: 'new',
            builder: (context, state) => const EditPasswordPage(
              title: 'Nová položka',
            ),
          ),
        ],
      ),
    ],
  );

  PasswordDemoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Správce hesel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
