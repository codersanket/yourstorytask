import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yourstory/models/article_modle.dart';
import 'package:yourstory/repositories/article_repo/article_Repo.dart';

part 'artcile_state.dart';

class ArtcileCubit extends Cubit<ArtcileState> {
  ArtcileCubit({required ArticleRepo articleRepo})
      : _articleRepo = articleRepo,
        super(ArtcileState.intial()) {
    getData();
  }

  ArticleRepo _articleRepo;

  getData() async {
    emit(state.copyWith(articleStateStaus: ArticleStateStaus.loading));
    var data = await _articleRepo.getData();
    log(data.author.toString());
    emit(state.copyWith(
        articleModel: data, articleStateStaus: ArticleStateStaus.loaded));
  }

  changeScaleFactor() {
    emit(state.copyWith(textScaleFactor: state.textScaleFactor == 1 ? 1.4 : 1));
  }
}
