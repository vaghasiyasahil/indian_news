import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:indian_news/models/slider_model.dart';

class Sliders{
  List<sliderModel> sliders=[];

  Future<void> getSlider()async{
    String url="https://newsapi.org/v2/everything?q=tesla&from=2024-04-23&sortBy=publishedAt&apiKey=5695047cce8c4d6894627ed8cd08536d";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
  
    if(jsonData['status']=='ok'){
      jsonData["articles"].forEach(
          (element){
          if(element["urlToImage"]!=null && element['description']!=null){
            sliderModel slidermodel = sliderModel(
              title: element["title"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"],
              author: element["author"],
            );
            sliders.add(slidermodel);
          }
        }
      );
    }
  }
}