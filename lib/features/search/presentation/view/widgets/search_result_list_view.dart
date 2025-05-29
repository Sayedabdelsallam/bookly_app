import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SuccessToSearchBook) {
          return state.books.isEmpty
              ? const Center(child: Text('No books found'))
              : ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const BestSellerListView( );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 5.0),
            itemCount: state.books.length,
          );
        } else if (state is FailedToSearchBook) {
          return CustomErrorWidget(errorMessage: state.errMsg);
        } else if (state is LoadingToSearchBook) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(
            child: Text(
              'Search here for free books',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
          );
        }
      },
    );
  }
}