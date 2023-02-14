import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:password_demo/application/application.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';

class EditPasswordPage extends StatefulWidget {
  final int? itemId;
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
  late final TextEditingController nameController,
      loginController,
      passwordController,
      repeatPasswordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    loginController = TextEditingController();
    passwordController = TextEditingController();
    repeatPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    loginController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? 'Editace položky'),
        ),
        body: BlocProvider(
          create: (_) => EditPasswordViewModel(
              repository: context.read<PasswordRepository>())
            ..setItemId(widget.itemId ?? -1),
          child: MultiBlocListener(
            listeners: [
              BlocListener<EditPasswordViewModel, EditPasswordState>(
                  listener: (context, state) {
                state.stateOrError?.fold(() => null, (state) {
                  context.goNamed('home');
                });
              }),
              BlocListener<EditPasswordViewModel, EditPasswordState>(
                  listener: (context, state) {
                state.itemOrError?.fold(
                    () => null,
                    (itemOrError) => itemOrError.fold((item) {
                          nameController.text = item.name;
                          loginController.text = item.login;
                          passwordController.text = item.password ?? '';
                          repeatPasswordController.text = item.password ?? '';
                        }, (errorMessage) => null));
              }),
            ],
            child: BlocBuilder<EditPasswordViewModel, EditPasswordState>(
              builder: (context, state) => Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Name/URL'),
                          textInputAction: TextInputAction.next,
                          controller: nameController,
                        ),
                        const Gap(8),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Login'),
                          textInputAction: TextInputAction.next,
                          controller: loginController,
                        ),
                        const Gap(8),
                        TextFormField(
                          obscureText: true,
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                          textInputAction: TextInputAction.next,
                          controller: passwordController,
                        ),
                        const Gap(8),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: 'Repeat password'),
                          textInputAction: TextInputAction.done,
                          controller: repeatPasswordController,
                        ),
                        const Gap(8),
                        const Gap(16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (widget.itemId != null)
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<EditPasswordViewModel>()
                                      .onDelete(widget.itemId!);
                                },
                                child: const Text('Delete'),
                              ),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  var item = PasswordItemDto(
                                      id: state.itemId >= 0
                                          ? state.itemId
                                          : null,
                                      name: nameController.text,
                                      login: loginController.text,
                                      password: passwordController.text);
                                  context
                                      .read<EditPasswordViewModel>()
                                      .onSave(item);
                                }
                              },
                              child: const Text('Save'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
