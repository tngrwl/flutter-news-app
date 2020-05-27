import 'package:flutter/material.dart';
import 'package:news/pages/newsList.dart';
import 'package:news/viewModel/ViewModelList.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MySplash(),
  ));
}
class MySplash extends StatefulWidget{
  @override
  _MyApp createState() => _MyApp();
}
class _MyApp extends State<MySplash>{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 15,
      backgroundColor: Colors.black12,
      image: Image.asset("assets/loading.gif"),
      loaderColor: Colors.white,
      photoSize: 30.0,
      navigateAfterSeconds: MyApp(),    );
  }
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title:"Fresh News",
       home: ChangeNotifierProvider(
         builder: (context)=>ViewModelList(),
         child: NewsList()
         )
     );
}
}
