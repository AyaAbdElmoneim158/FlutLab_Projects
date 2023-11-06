import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/providers/main_provider.dart';
import 'package:provider/provider.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // int currentPage = 0;
    // PageController? controller = PageController(initialPage: currentPage);

    return Consumer<MainProvider>(
      builder: (context, mainProvider, child) => PageView(
        controller: mainProvider.controller,
        onPageChanged: (value) => mainProvider.onPageChanged(value),
        // physics:const NeverScrollableScrollPhysics() ,
        children: mainProvider.screens,
      ),
    );
  }
}
