import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part 'bottomnavigationbar_state.dart';

class BottomnavigationbarCubit extends Cubit<BottomnavigationbarState> {
  BottomnavigationbarCubit() : super(BottomnavigationbarState.intial());

  onChanged(int i) {
    emit(state.copyWith(bottomNavigationItems: i==0?BottomNavigationItems.PointTap:BottomNavigationItems.ArticlePage));
  }
}
