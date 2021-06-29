import 'package:uas_4b_berita/model/article_model.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(article.image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              article.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.subtitle,
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 12.0,),
            )
          ],
        ),
        ),
    );
  }
}