import 'package:flutter/material.dart';
import 'package:news_cloude_app/featues/home/widgets/category_item.dart';
import 'package:news_cloude_app/featues/home/widgets/news_list.dart';
import 'package:news_cloude_app/utils/news_api_servises.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: catagoriz.length,
              itemBuilder: (context, index) {
                return CategoryItem(index: index);
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Top HeadLines",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  overflow: TextOverflow.visible),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: FutureBuilder(
            future: NewsApiServises.featchTopHeadLines(),
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
          ),
        ),
      ],
    );
  }
}
