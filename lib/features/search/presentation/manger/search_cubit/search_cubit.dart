import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit({required this.searchRepo}) : super(SearchCubitInitial());
  final SearchRepo searchRepo;
  Future fetchSearchBooks({required String searchValue}) async {
    emit(SearchCubitLoading());
    var result = await searchRepo.fetchSearchedBooks(searchQuery: searchValue);
    result.fold((failure) {
      emit(SearchCubitFailure(failure.errorMsg));
    }, (books) {
      emit(SearchCubitSuccess(books));
    });
  }
}
