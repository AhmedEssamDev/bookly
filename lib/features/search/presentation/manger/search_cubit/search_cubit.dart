import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepo}) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future fetchSearchBooks({required String searchValue}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchedBooks(searchQuery: searchValue);
    result.fold((failure) {
      emit(SearchFailure(failure.errorMsg));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
