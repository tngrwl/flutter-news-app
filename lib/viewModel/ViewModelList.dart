import 'package:flutter/cupertino.dart';
//import 'package:news/main.dart';
import 'package:news/services/WebService.dart';
import 'package:news/viewModel/newsArticleViewModel.dart';
import 'package:news/models/newArticle.dart';

class ViewModelList extends ChangeNotifier {
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();



  void populateTopHeadlines() async{
    List<Article> articles=await WebServices().fetchTopHeadlines();
    this.articles=articles.map((articles) => NewsArticleViewModel(article: articles)).toList();
    notifyListeners();
  }
}