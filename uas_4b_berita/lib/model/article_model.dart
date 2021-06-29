
class Article {
  String author;
  String title;
  String image;
  String subtitle;

  Article(
    {
    this.author,
    this.title,
    this.image,
    this.subtitle
   });
  
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] as String,
      title:  json['title'] as String,
      image:  json['image'] as String,
      subtitle:  json['subtitle'] as String,
    );
  }
}