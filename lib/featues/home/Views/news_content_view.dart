import 'package:flutter/material.dart';
import 'package:news_cloude_app/featues/home/widgets/news-content_view_body.dart';
import 'package:news_cloude_app/models/news_model.dart';

class NewsContentView extends StatelessWidget {
  const NewsContentView({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text.rich(
          TextSpan(
            text: 'News',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Content',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: NewsContentViewBody(newsModel: newsModel),
    );
  }
}
