import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/search/widgets/search_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return SearchField(controller: searchController);
  }
}
