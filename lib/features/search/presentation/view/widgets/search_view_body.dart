import 'dart:async';
import 'package:bookly_app/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController searchController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 30.0),
                CustomTextField(
                  controller: searchController,
                  onChanged: (value) {
                    if (_debounce?.isActive ?? false) _debounce?.cancel();
                    _debounce = Timer(const Duration(milliseconds: 500), () {
                      if (value.trim().isNotEmpty) {
                        context.read<SearchCubit>().searchBook(value: value.trim());
                      }
                    });
                  },
                  onFieldSubmitted: (value) {
                    if (value.trim().isNotEmpty) {
                      context.read<SearchCubit>().searchBook(value: value.trim());
                    }
                  },
                ),
                const SizedBox(height: 20.0),
                const SearchListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}