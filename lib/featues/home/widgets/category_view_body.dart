import 'package:flutter/material.dart';

import '../../../utils/news_api_servises.dart';
import 'news_list.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FutureBuilder(
          future: NewsApiServises.featchCategoryNews(),
          builder: (context, snapshot) {
            if (!snapshot.hasError) {
              if (snapshot.connectionState == ConnectionState.done) {
                return NewsList(news: snapshot.data!);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            } else {
              return Center(
                  child: Text(
                snapshot.error.toString(),
                style: const TextStyle(
                  color: Colors.red,
                ),
              ));
            }
          },
        )
      ],
    );
  }
}
