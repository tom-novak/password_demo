import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:password_demo/application/application.dart';
import 'package:password_demo/domain/password_repository.dart';
import 'package:password_demo/infrastructure/local_password_repository.dart';
import 'package:password_demo/infrastructure/sqlite/password_items_database.dart';
import 'package:password_demo/infrastructure/sqlite/password_data_dao.dart';
import 'package:password_demo/presentation/edit_password/edit_password_page.dart';
import 'package:password_demo/presentation/login/login_page.dart';
import 'package:password_demo/presentation/password_detail/password_detail_page.dart';
import 'package:password_demo/presentation/password_list/password_list_page.dart';
import 'package:password_demo/presentation/widgets/widgets.dart';

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
    initialLocation: '/login',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const PasswordListPage(),
        routes: [
          GoRoute(
            name: 'detail',
            path: 'detail/:itemId',
            builder: (context, state) {
              if (state.params['itemId'] != null) {
                var itemId = int.tryParse(state.params['itemId']!);
                return PasswordDetailPage(itemId: itemId);
              } else {
                return const GeneralErrorPage();
              }
            },
            routes: [
              GoRoute(
                name: 'edit',
                path: 'edit',
                builder: (context, state) {
                  if (state.params['itemId'] != null) {
                    var itemId = int.tryParse(state.params['itemId']!);
                    return EditPasswordPage(itemId: itemId);
                  } else {
                    return const GeneralErrorPage();
                  }
                },
              ),
            ],
          ),
          GoRoute(
            name: 'new',
            path: 'new',
            builder: (context, state) => const EditPasswordPage(
              title: 'Nov?? polo??ka',
            ),
          ),
        ],
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
          name: 'unsupporeted',
          path: '/unsupported',
          builder: (context, state) => const Scaffold(
                body: GeneralErrorPage(),
              ))
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
        RepositoryProvider<PasswordRepository>(
            create: (_) => LocalPasswordRepository(
                dataStore: widget.passwordDataDao,
                secureStorage: const FlutterSecureStorage()))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => LocalAuthCubit(auth: LocalAuthentication())..init(),
          )
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<LocalAuthCubit, LocalAuthCubitState>(
                listener: (context, state) {
              state.authorized.fold(
                () => null,
                (authorizedStateOrFailure) =>
                    authorizedStateOrFailure.fold((authorizedState) {
                  switch (authorizedState) {
                    case 'Authorized':
                      _router.goNamed('home');
                      break;
                    default:
                      _router.goNamed('login');
                  }
                }, (errorMessage) => null),
              );
            }),
          ],
          child: MaterialApp.router(
            title: 'Spr??vce hesel',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routerConfig: _router,
          ),
        ),
      ),
    );
  }
}
