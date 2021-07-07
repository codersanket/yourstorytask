import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourstory/logic/cubits/artcile/artcile_cubit.dart';
import 'package:yourstory/logic/cubits/bottom_navigation_cubit/bottomnavigationbar_cubit.dart';
import 'package:yourstory/screens/article_page/article_page.dart';
import 'package:yourstory/screens/pointtap_widget.dart';

import 'repositories/article_repo/article_Repo.dart';

void main() {
  runApp(MyApp());
  EquatableConfig.stringify = true;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => ArticleRepo(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => BottomnavigationbarCubit()),
          BlocProvider(
              create: (context) =>
                  ArtcileCubit(articleRepo: context.read<ArticleRepo>()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomnavigationbarCubit, BottomnavigationbarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("YourStory Task"),
          ),
          body: state.bottomNavigationItems == BottomNavigationItems.PointTap
              ? PointTapWidget()
              : ArticlePage(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:
                state.bottomNavigationItems == BottomNavigationItems.PointTap
                    ? 0
                    : 1,
            onTap: (int i) =>
                context.read<BottomnavigationbarCubit>().onChanged(i),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.square_foot), label: "Point Tap"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.article), label: "Article Page")
            ],
          ),
        );
      },
    );
  }
}
