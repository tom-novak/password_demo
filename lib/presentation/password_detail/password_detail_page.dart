import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:password_demo/domain/domain.dart';
import 'package:password_demo/presentation/password_detail/password_detail_view_model.dart';
import 'package:password_demo/presentation/widgets/center_progress_indicator.dart';

class PasswordDetailPage extends StatefulWidget {
  final int? itemId;

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
        body: BlocProvider(
          create: (_) => PasswordDetailViewModel(
              repository: context.read<PasswordRepository>())
            ..setItemId(widget.itemId ?? -1),
          child: BlocBuilder<PasswordDetailViewModel, PasswordDetailState>(
            builder: (context, state) {
              if (state.itemLoading) {
                return const CenterProgressIndicator();
              }

              return state.itemOrError?.fold(
                    () => null,
                    (itemOrError) => itemOrError.fold(
                        (item) => SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Name'),
                                        Text('${item.name}'),
                                      ],
                                    ),
                                    const Gap(16.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text('Login'),
                                              Text('${item.login}'),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Clipboard.setData(
                                              ClipboardData(text: item.login),
                                            ).then((value) => ScaffoldMessenger
                                                    .of(context)
                                                .showSnackBar(const SnackBar(
                                                    content: Text(
                                                        'P??ihla??ovac?? jm??no zkop??rov??no'))));
                                          },
                                          icon: const Icon(Icons.copy),
                                        ),
                                      ],
                                    ),
                                    const Gap(16.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text('Password'),
                                              Text(
                                                  '${_passwordVisible ? item.password : "********"}'),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                          icon: Icon(
                                            _passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            size: kIconSizeSmall,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Clipboard.setData(
                                              ClipboardData(
                                                  text: item.password),
                                            ).then((value) => ScaffoldMessenger
                                                    .of(context)
                                                .showSnackBar(const SnackBar(
                                                    content: Text(
                                                        'Heslo zkop??rov??no'))));
                                          },
                                          icon: const Icon(Icons.copy),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        (errorMessage) => null),
                  ) ??
                  const SizedBox.shrink();
            },
          ),
        ),
      );
}
