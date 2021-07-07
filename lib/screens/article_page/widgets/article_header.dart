import 'package:flutter/material.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader(
      {Key? key, required this.header, required this.textScaleFactor})
      : super(key: key);

  final String header;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Text(header,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.bold),
        textScaleFactor: textScaleFactor);
  }
}
