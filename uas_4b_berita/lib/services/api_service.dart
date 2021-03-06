import 'dart:convert';
import 'package:http/http.dart';
import 'package:uas_4b_berita/model/article_model.dart';

class ApiService {
  final endPoinUrl =
  "https://jaroji.web.id/api/news.php";

  Future<List<Article>> getArticle() async {
    Response res = await get(endPoinUrl);

    if(res.statusCode ==200) {
      Map<String, dynamic>json = jsonDecode(res.body);

      List<dynamic> body = json['berita'];

      List<Article> berita =
      body.map((dynamic item) => Article.fromJson(item)).toList();

      return berita;
    } else {
      throw ("Can't get the Articles");
    }
  }
}