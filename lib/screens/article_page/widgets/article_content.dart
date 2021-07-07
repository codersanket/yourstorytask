import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  ArticleContent({Key? key, required this.articleContent,required this.textScaleFactor}) : super(key: key);
  String articleContent;
  double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Text(articleContent,
        textAlign: TextAlign.justify,
        textScaleFactor: textScaleFactor,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16));
  }
}
