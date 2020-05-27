import 'package:flutter/material.dart';
//import ;'package:flutter/rendering.dart'
import 'package:news/viewModel/ViewModelList.dart';
//import 'package:news/viewModel/newsArticleViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatefulWidget{
  
  _NewsListState createState()=> _NewsListState();
}
class _NewsListState extends State<NewsList>{
 void initState(){
   super.initState();
   Provider.of<ViewModelList>(context,listen: false).populateTopHeadlines();
 }

  @override
  Widget build(BuildContext context) {
  final vo= Provider.of<ViewModelList>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Top News")
      ),
      body: ListView.builder(
      itemCount: vo.articles.length,
      itemBuilder: (context, index){
final article=vo.articles[index];

        return ListTile(
          leading:Container(
            width: 100,
            height: 100,
          child: article.urlToImage==null?Image.asset("assets/neews.jpg"): Image.network(article.urlToImage)),
          title: Text(article.title),
        );
      })
    );
  }
}