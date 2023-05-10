import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_cloude_app/models/news_model.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.2,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: newsModel.image ??
                  "https://static.wikia.nocookie.net/6d37f599-6b4a-4053-b2f3-be1bb11109ce",
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Text(
            newsModel.title,
            style: const TextStyle(fontSize: 26),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
