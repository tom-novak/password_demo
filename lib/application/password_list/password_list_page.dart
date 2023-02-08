import 'package:flutter/material.dart';

class PasswordListPage extends StatelessWidget {
  const PasswordListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Hesla'),
        ),
        body: ListView.builder(
          itemCount: 200,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item ${index}'),
            subtitle: Text('Item ${index} subscription'),
            onTap: () {
              // TODO navigate to item detail
            },
          ),
        ),
      );
}
