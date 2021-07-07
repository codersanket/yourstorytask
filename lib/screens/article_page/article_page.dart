import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourstory/logic/cubits/artcile/artcile_cubit.dart';
import 'package:yourstory/screens/article_page/widgets/article_widget.dart';
import 'package:yourstory/screens/article_page/widgets/bottomsheet.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtcileCubit, ArtcileState>(
      builder: (context, state) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => BlocProvider<ArtcileCubit>.value(
                      value: context.read<ArtcileCubit>(),
                      child: ModalBottomSheet(),
                    ),
                    isDismissible: false,
                  );
                },
                child: Icon(Icons.text_format)),
            body: state.articleStateStaus == ArticleStateStaus.loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ArticleWidget(state: state));
      },
    );
  }
}
