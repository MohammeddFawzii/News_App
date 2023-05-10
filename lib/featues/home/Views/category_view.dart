import 'package:flutter/material.dart';
import 'package:news_cloude_app/featues/home/widgets/category_view_body.dart';
import 'package:news_cloude_app/utils/news_api_servises.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
  static const id = "category view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text.rich(
          TextSpan(
            text: category,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Cloud',
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
      body: const CategoryViewBody(),
    );
  }
}
