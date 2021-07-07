import 'package:flutter/material.dart';

class ArticleDescription extends StatelessWidget {
  ArticleDescription({Key? key, required this.description,required this.textScaleFactor}) : super(key: key);
  String description;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.2),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Text(
        description,
        textAlign: TextAlign.justify,
        textScaleFactor: textScaleFactor,
        style: Theme.of(context)  
            .textTheme
            .subtitle2
            ?.copyWith(fontStyle: FontStyle.italic, fontSize: 18),
      ),
    );
  }
}
