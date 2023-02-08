import 'package:flutter/material.dart';
import 'package:password_demo/constants.dart';
import 'package:password_demo/domain/password_item.dart';

class PasswordDetailPage extends StatefulWidget {
  final PasswordItem? initialValue;

  const PasswordDetailPage({
    super.key,
    this.initialValue,
  });

  @override
  State<PasswordDetailPage> createState() => _PasswordDetailPageState();
}

class _PasswordDetailPageState extends State<PasswordDetailPage> {
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Detail hesla'),
          actions: [
            IconButton(
              onPressed: () {
                // TODO navigate to edit page
              },
              icon: Icon(
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
