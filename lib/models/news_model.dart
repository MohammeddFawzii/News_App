import 'package:flutter/material.dart';

class NewsModel {
  final String title;
  final String? description;
  final String? image;
  final String? content;
  final String? sourse;
  final String? auther;
  final String? date;
  final String? site;

  NewsModel({
    @required this.site,
    @required this.date,
    @required this.auther,
    @required this.sourse,
    required this.title,
    @required this.description,
    @required this.image,
    @required this.content,
  });

  factory NewsModel.fromJson(dynamic jsonData) {
    return NewsModel(
      site: jsonData["url"],
      date: jsonData["publishedAt"],
      auther: jsonData['author'],
      sourse: jsonData["source"]["name"],
      title: jsonData["title"],
      description: jsonData["description"],
      image: jsonData["urlToImage"],
      content: jsonData["content"],
    );
  }
}
