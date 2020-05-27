//import 'package:news/main.dart';
import 'package:news/models/newArticle.dart';
class NewsArticleViewModel{
  Article _article;
  NewsArticleViewModel({Article article}):_article=article;
  String get title{
    return _article.title;
  }
  String get description{
    return _article.description;
  }
  String get url{
    return _article.url;
  }
  String get urlToImage{
    return _article.urlToImage;
  }

}