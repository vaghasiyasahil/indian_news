import 'package:indian_news/models/category_model.dart';
List<CategoryModel> getCategories(){
  List<CategoryModel> category=[];
  CategoryModel categoryModel=new CategoryModel();

//1
  categoryModel.categoryName="Business";
  categoryModel.image="images/img_business.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

//2
  categoryModel.categoryName="Entertainment";
  categoryModel.image="images/img_entertainment.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

//3
  categoryModel.categoryName="General";
  categoryModel.image="images/img_general.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

//4
  categoryModel.categoryName="Health";
  categoryModel.image="images/img_health.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

//5
  categoryModel.categoryName="Sports";
  categoryModel.image="images/img_sports.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

//6
  categoryModel.categoryName="Technology";
  categoryModel.image="images/img_technology.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

//7
  categoryModel.categoryName="Science";
  categoryModel.image="images/img_science.jpg";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  return category;

}