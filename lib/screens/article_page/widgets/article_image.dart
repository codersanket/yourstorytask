import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  ArticleImage({Key? key, required this.imageUrl}) : super(key: key);
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
