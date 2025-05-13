import 'package:cinemapedia/presentation/blocs/home_event.dart';
import 'package:cinemapedia/presentation/blocs/home_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final formKey = GlobalKey<FormState>();
  HomeBloc() : super(HomeState()) {
    on<HomeInitEvent>((event, emit) {
      emit(state.copyWith(formkey: formKey));
    });
    on<TitleChanged>((event, emit) {
      emit(state.copyWith(title: event.title));
    });
    on<PathChanged>((event, emit) {
      emit(state.copyWith(title: event.path));
    });
    on<FormSumbit>((event, emit) {
      emit(state.copyWith());
    });
  }
}
