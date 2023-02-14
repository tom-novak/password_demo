import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:password_demo/application/application.dart';
import 'package:password_demo/domain/password_repository.dart';

class PasswordListPage extends StatelessWidget {
  const PasswordListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => PasswordListViewModel(
            repository: context.read<PasswordRepository>()),
        child: BlocBuilder<PasswordListViewModel, PasswordListState>(
          builder: (context, state) {
            context.read<PasswordListViewModel>().loadNext();

            return Scaffold(
              appBar: AppBar(
                title: const Text('Hesla'),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => context.goNamed('new'),
                child: const Icon(Icons.add),
              ),
              body: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) => ListTile(
                  title: Text('Item ${index}'),
                  subtitle: Text('Item ${index} subscription'),
                  onTap: () {
                    context.goNamed('detail', params: {'itemId': '$index'});
                  },
                ),
              ),
            );
          },
        ),
      );
}
