import 'package:dio/dio.dart';
import 'package:news_cloude_app/models/news_model.dart';

class NewsApiServises {
  static Future<List<NewsModel>> featchTopHeadLines() async {
    const String baseUrl = "https://newsapi.org/v2";

    final dio = Dio();

    var response = await dio.get(
        "$baseUrl/top-headlines?country=us&apiKey=2f86f086b77144809c11faeec86cf9bb#");
    List<NewsModel> news = parseData(response);
    return news;
  }

  static Future<List<NewsModel>> featchCategoryNews() async {
    const String baseUrl = "https://newsapi.org/v2";

    final dio = Dio();

    var response = await dio.get(
        "$baseUrl/top-headlines?country=us&category=$category&apiKey=2f86f086b77144809c11faeec86cf9bb#");
    List<NewsModel> news = parseData(response);
    return news;
  }

  static List<NewsModel> parseData(Response<dynamic> response) {
    List<NewsModel> news = [];
    var items = response.data['articles'];
    for (var newsMap in items) {
      news.add(NewsModel.fromJson(newsMap));
    }
    return news;
  }
}

var category = "business";
