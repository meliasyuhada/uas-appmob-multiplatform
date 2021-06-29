import 'package:uas_4b_berita/services/api_service.dart';
import 'view/customListTile.dart';
import 'model/article_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Septi Melia", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        ),

        body: FutureBuilder(
          future: client.getArticle(),
          builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {

            if (snapshot.hasData) {
              List<Article> articles = snapshot.data;
              return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) => 
                customListTile(articles[index], context),);
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}