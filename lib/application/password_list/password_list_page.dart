import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PasswordListPage extends StatelessWidget {
  const PasswordListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
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
}
