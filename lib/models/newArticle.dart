class Article{
//Source source;
//String author;
String title;
String description;
String url;
String urlToImage;
//String publishedAt;
//String content;

Article({
this.title,
this.description,
this.url,
this.urlToImage,
});

factory Article.fromJson(Map<String, dynamic>json){
  return Article(
    title: json["title"],
    description: json["description"],
    url: json["url"],
    urlToImage:json["urlToImage"]);
}
}