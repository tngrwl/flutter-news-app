import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:news/models/newArticle.dart';

class WebServices
{
  Future<List<Article>> fetchTopHeadlines() async{
  final String url="http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=e7192e3d85c14aba9e67863522a6df3d";
    
    final response=await http.get(url);
    if(response.statusCode == 200){
      final result = jsonDecode(response.body);
      Iterable list= result["articles"];
      return list.map((article)=> Article.fromJson(article)).toList();

    }
    else {
      throw Exception("Failed to get top news");
    }
  }
}