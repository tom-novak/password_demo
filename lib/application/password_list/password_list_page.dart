import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:password_demo/application/application.dart';
import 'package:password_demo/data/password_item_dto.dart';
import 'package:password_demo/domain/password_repository.dart';
import 'package:password_demo/infrastructure/local_auth/local_auth_cubit.dart';
import 'package:password_demo/infrastructure/local_password_repository.dart';

class PasswordListPage extends StatefulWidget {
  const PasswordListPage({super.key});

  @override
  State<PasswordListPage> createState() => _PasswordListPageState();
}

class _PasswordListPageState extends State<PasswordListPage> {
  final PagingController<int, PasswordItemDto> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) {
          var viewModel = PasswordListViewModel(
              repository: context.read<PasswordRepository>());

          _pagingController.addPageRequestListener((pageKey) {
            viewModel.loadPage(pageKey);
          });

          return viewModel;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Hesla'),
            actions: [
              IconButton(
                icon: const Icon(Icons.lock),
                onPressed: () {
                  context.read<LocalAuthCubit>().lock();
                },
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.goNamed('new'),
            child: const Icon(Icons.add),
          ),
          body: Builder(
            builder: (context) =>
                BlocListener<PasswordListViewModel, PasswordListState>(
              listenWhen: (context, state) => state.nextPageOrFailure != null,
              listener: (context, state) {
                state.nextPageOrFailure!.fold(
                    () => null,
                    (newItemsOrFailure) => newItemsOrFailure.fold((newItems) {
                          final isLastPage = newItems.length < kItemsPerPage;
                          if (isLastPage) {
                            _pagingController.appendLastPage(newItems);
                          } else {
                            _pagingController.appendPage(
                                newItems, state.page + 1);
                          }
                        }, (error) => _pagingController.error = error));
              },
              child: RefreshIndicator(
                onRefresh: () async {
                  _pagingController.refresh();
                },
                child: PagedListView<int, PasswordItemDto>(
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<PasswordItemDto>(
                      itemBuilder: (context, item, index) => ListTile(
                            title: Text(item.name),
                            subtitle: Text(item.login),
                            onTap: () {
                              context.goNamed('detail',
                                  params: {'itemId': item.id.toString()});
                            },
                          )),
                ),
              ),
            ),
          ),
        ),
      );
}
