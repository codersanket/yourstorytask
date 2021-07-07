import 'package:yourstory/models/article_modle.dart';

abstract class BaseArticleRepo{

  Future<ArticleModel> getData();
}