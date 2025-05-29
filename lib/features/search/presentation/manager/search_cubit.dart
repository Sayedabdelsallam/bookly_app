
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final SearchRepo homeRepo;

  Future<void> searchBook({required String value}) async {
    emit(LoadingToSearchBook());
    final result = await homeRepo.searchBook(searchBook: value);
    result.fold(
          (failure) => emit(
            FailedToSearchBook(failure.errMessage),
      ),
          (books) => emit(
            SuccessToSearchBook(books),
      ),
    );
  }
}