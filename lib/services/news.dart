import 'package:flutter/material.dart';
import 'package:indian_news/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class News{
  List<ArticleModel> news=[];

  Future<void> getNews()async{
    String url="https://newsapi.org/v2/everything?q=tesla&from=2024-01-13&sortBy=publishedAt&apiKey=0762d3a9ab394d1b874f4c552de83d43";
    // String url="https://newsapi.org/v2/everything?domains=wsj.com&apiKey=0762d3a9ab394d1b874f4c552de83d43";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
  
    if(jsonData['status']=='ok'){
      jsonData["articles"].forEach(
          (element){
          if(element["urlToImage"]!=null && element['description']!=null){
            ArticleModel articleModel = ArticleModel(
              title: element["title"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"],
              author: element["author"],
            );
            news.add(articleModel);
          }
        }
      );
    }
  }
}