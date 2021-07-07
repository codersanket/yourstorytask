part of 'bottomnavigationbar_cubit.dart';

enum BottomNavigationItems { PointTap, ArticlePage }

class BottomnavigationbarState extends Equatable {
  BottomnavigationbarState({
    this.bottomNavigationItems,
  });

  factory BottomnavigationbarState.intial() {
    return BottomnavigationbarState(
        bottomNavigationItems: BottomNavigationItems.PointTap);
  }
  BottomNavigationItems? bottomNavigationItems;

  @override
  List<Object> get props => [bottomNavigationItems ?? ''];

  BottomnavigationbarState copyWith({
    BottomNavigationItems? bottomNavigationItems,
  }) {
    return BottomnavigationbarState(
      bottomNavigationItems:
          bottomNavigationItems ?? this.bottomNavigationItems,
    );
  }
}
