import 'package:flutter/material.dart';

class EditPasswordPage extends StatefulWidget {
  final String? itemId;
  final String? title;

  const EditPasswordPage({
    super.key,
    this.itemId,
    this.title,
  });

  @override
  State<EditPasswordPage> createState() => _EditPasswordPageState();
}

class _EditPasswordPageState extends State<EditPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? 'Editace položky'),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [],
          ),
        ),
      );
}
