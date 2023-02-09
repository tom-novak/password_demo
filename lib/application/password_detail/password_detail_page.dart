import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:password_demo/constants.dart';

class PasswordDetailPage extends StatefulWidget {
  final String? itemId;

  const PasswordDetailPage({
    super.key,
    required this.itemId,
  });

  @override
  State<PasswordDetailPage> createState() => _PasswordDetailPageState();
}

class _PasswordDetailPageState extends State<PasswordDetailPage> {
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Detail hesla'),
          actions: [
            IconButton(
              onPressed: () {
                context.goNamed('edit', params: {'itemId': '${widget.itemId}'});
              },
              icon: const Icon(
                Icons.edit,
                size: kIconSizeSmall,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Name'),
                  Text('[Some name]'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Login'),
                  Text('[Some login]'),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Password'),
                        Text('•••••••••••••'),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: kIconSizeSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
