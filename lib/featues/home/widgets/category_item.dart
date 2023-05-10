import 'package:flutter/material.dart';
import 'package:news_cloude_app/featues/home/Views/category_view.dart';
import 'package:news_cloude_app/utils/news_api_servises.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        category = catagoriz[index];
        Navigator.pushNamed(context, CategoryView.id);
        print(category);
      },
      child: Container(
        width: 200.0,
        height: MediaQuery.of(context).size.height * .2,
        margin: const EdgeInsets.all(10.0),
        child: Stack(children: [
          SizedBox(
            width: 200.0,
            height: MediaQuery.of(context).size.height * .2,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                images[index],
              ),
            ),
          ),
          Center(
            child: Text(
              catagoriz[index],
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.black.withOpacity(.4)),
            ),
          ),
        ]),
      ),
    );
  }
}

List<String> catagoriz = [
  "business",
  "entertainment",
  "health",
  "science",
  "sports",
  "technology"
];

List<String> images = [
  "assets/images/business.jpg",
  "assets/images/entertainment.png",
  "assets/images/health.png",
  "assets/images/science.jpeg",
  "assets/images/sports.jpeg",
  "assets/images/technology.jpg"
];
