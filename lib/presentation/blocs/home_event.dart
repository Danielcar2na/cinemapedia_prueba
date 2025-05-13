abstract class HomeEvent {}

class HomeInitEvent extends HomeEvent {}

class PathChanged extends HomeEvent {
  final String path;
  PathChanged({required this.path});
}

class TitleChanged extends HomeEvent {
  final String title;
  TitleChanged({required this.title});
}

class FormSumbit extends HomeEvent{}
