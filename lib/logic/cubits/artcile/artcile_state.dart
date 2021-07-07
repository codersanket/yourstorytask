part of 'artcile_cubit.dart';

enum ArticleStateStaus { intial, loading, loaded, error }

class ArtcileState extends Equatable {
  ArticleModel? articleModel;
  ArticleStateStaus articleStateStaus;
  double textScaleFactor;

  ArtcileState(
      {this.articleModel,
      required this.articleStateStaus,
      required this.textScaleFactor});
  @override
  List<Object> get props =>
      [articleStateStaus, articleModel ?? '', textScaleFactor];

  ArtcileState copyWith(
      {ArticleModel? articleModel,
      ArticleStateStaus? articleStateStaus,
      double? textScaleFactor}) {
    return ArtcileState(
        articleModel: articleModel ?? this.articleModel,
        articleStateStaus: articleStateStaus ?? this.articleStateStaus,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor);
  }

  factory ArtcileState.intial() {
    return ArtcileState(
        articleStateStaus: ArticleStateStaus.intial, textScaleFactor: 1);
  }
}
