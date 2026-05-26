import 'package:bookly/features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.initialQuery,});
  final String initialQuery;
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
    late final TextEditingController _controller;
  @override
  initState() {
    _controller = TextEditingController(text: widget.initialQuery);
    if(widget.initialQuery.isNotEmpty){
      BlocProvider.of<SearchCubit>(context).fetchSearchBooks(searchValue: widget.initialQuery);
    }
    super.initState();
  }
   void _performSearch(String query) {
    if (query.trim().isNotEmpty) {
      BlocProvider.of<SearchCubit>(context).fetchSearchBooks(searchValue: query);
    }
  }
  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchViewBody(
      controller: _controller,
      onSearch: _performSearch,
    )));
  }
}
