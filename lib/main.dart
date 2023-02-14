import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:password_demo/application/application.dart';
import 'package:password_demo/application/login/login_page.dart';
import 'package:password_demo/data/password_items_database.dart';
import 'package:password_demo/data/sqlite/password_data_dao.dart';
import 'package:password_demo/domain/password_repository.dart';
import 'package:password_demo/infrastructure/local_auth/local_auth_cubit.dart';
import 'package:password_demo/infrastructure/local_password_repository.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database =
      await $FloorPasswordItemsDatabase.databaseBuilder(kDbKey).build();
  runApp(PasswordDemoApp(
    passwordDataDao: database.passwordDataDao,
  ));
}

class PasswordDemoApp extends StatefulWidget {
  final PasswordDataDao passwordDataDao;

  const PasswordDemoApp({
    super.key,
    required this.passwordDataDao,
  });

  @override
  State<PasswordDemoApp> createState() => _PasswordDemoAppState();
}

class _PasswordDemoAppState extends State<PasswordDemoApp> {
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
                builder: (context, state) {
                  if (state.params['itemId'] != null) {
                    var itemId = int.tryParse(state.params['itemId']!);
                    return EditPasswordPage(itemId: itemId);
                  } else {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Error'),
                      ),
                      body: const Center(
                        child: Text('Some error occured'),
                      ),
                    );
                  }
                },
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
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    _router.goNamed('login');
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        Provider<PasswordRepository>(
            create: (_) =>
                LocalPasswordRepository(dataStore: widget.passwordDataDao))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => LocalAuthCubit(auth: LocalAuthentication()),
          )
        ],
        child: MaterialApp.router(
          title: 'Správce hesel',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routerConfig: _router,
        ),
      ),
    );
  }
}
