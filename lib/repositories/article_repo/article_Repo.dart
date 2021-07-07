import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:yourstory/models/article_modle.dart';
import 'package:yourstory/repositories/article_repo/base_article_repo.dart';

class ArticleRepo extends BaseArticleRepo {
  @override
  Future<ArticleModel> getData() async {
    final data = await rootBundle.loadString("assets/model.json");
    return ArticleModel.fromJson(jsonDecode(data));
  }
}
