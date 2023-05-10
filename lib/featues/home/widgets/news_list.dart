import 'package:flutter/material.dart';
import 'package:news_cloude_app/featues/home/Views/news_content_view.dart';
import 'package:news_cloude_app/featues/home/widgets/news_list_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
    required this.news,
  });
  final List<dynamic> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: news.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              var currentNews = news[index];
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return NewsContentView(newsModel: currentNews);
                },
              ));
            },
            child: NewsListItem(
              newsModel: news[index],
            ),
          );
        });
  }
}
