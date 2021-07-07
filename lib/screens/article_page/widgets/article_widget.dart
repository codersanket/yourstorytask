import 'package:flutter/material.dart';
import 'package:yourstory/logic/cubits/artcile/artcile_cubit.dart';
import 'package:yourstory/screens/article_page/widgets/article_content.dart';
import 'package:yourstory/screens/article_page/widgets/article_description.dart';
import 'package:yourstory/screens/article_page/widgets/article_header.dart';
import 'package:yourstory/screens/article_page/widgets/article_image.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({Key? key, required this.state}) : super(key: key);
  final ArtcileState state;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ArticleHeader(header: state.articleModel!.title,textScaleFactor: state.textScaleFactor,),
            SizedBox(
              height: 20,
            ),
            ArticleImage(imageUrl: state.articleModel!.urlToImage),
            SizedBox(
              height: 20,
            ),
            ArticleDescription(description: state.articleModel!.description,textScaleFactor: state.textScaleFactor,),
            SizedBox(
              height: 20,
            ),
            ArticleContent(articleContent: state.articleModel!.content,textScaleFactor: state.textScaleFactor,)
          ],
        ),
      ),
    );
  }
}
