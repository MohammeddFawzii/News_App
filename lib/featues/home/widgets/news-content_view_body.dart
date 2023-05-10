import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_cloude_app/models/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContentViewBody extends StatelessWidget {
  const NewsContentViewBody({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  newsModel.sourse ?? "",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: CachedNetworkImage(
                    imageUrl: newsModel.image ??
                        "https://static.wikia.nocookie.net/6d37f599-6b4a-4053-b2f3-be1bb11109ce",
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Text(
                  newsModel.title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  newsModel.description ?? " ",
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Text(
                  newsModel.date ?? " ",
                  style: const TextStyle(fontSize: 20, color: Colors.green),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ElevatedButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(newsModel.site!));
                },
                child: const Text(
                  "View More",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                )),
          )
        ],
      ),
    );
  }
}
