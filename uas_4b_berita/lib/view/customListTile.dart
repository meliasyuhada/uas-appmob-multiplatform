import 'package:uas_4b_berita/model/article_model.dart';
import 'package:uas_4b_berita/view/articles_details_page.dart';
import 'package:flutter/material.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ArticlePage(
          article:article,
        )));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 3.0,
            
            ),
        ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: NetworkImage(article.image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Text(article.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0
          ),),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(article.subtitle,
          style: TextStyle(
            fontSize: 12.0),)
          
        ],),
    ),);
}
